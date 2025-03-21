/* -*- c++ -*- */
/*
 * Copyright 2016 <+YOU OR YOUR COMPANY+>.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "pdu_to_stream_impl.h"

namespace gr {
  namespace kcsa {

    pdu_to_stream::sptr
    pdu_to_stream::make(int decim, uint8_t filler)
    {
      return gnuradio::get_initial_sptr
        (new pdu_to_stream_impl(decim, filler));
    }

    /*
     * The private constructor
     */
    pdu_to_stream_impl::pdu_to_stream_impl(int decim, uint8_t filler)
      : gr::sync_decimator("pdu_to_stream",
              gr::io_signature::make(1, 1, sizeof(gr_complex)),
              gr::io_signature::make(2, 2, sizeof(uint8_t)), decim),
        d_filler(filler)
    {
        d_pdu_port = pmt::mp("pdu");
        message_port_register_in(d_pdu_port);
        set_msg_handler(d_pdu_port, boost::bind(&pdu_to_stream_impl::pdu_callback, this ,_1) );
    }

    /*
     * Our virtual destructor.
     */
    pdu_to_stream_impl::~pdu_to_stream_impl()
    {
    }

    void pdu_to_stream_impl::pdu_callback(pmt::pmt_t msg)
    {
        //pmt::pmt_t meta(pmt::car(msg));
        pmt::pmt_t data(pmt::cdr(msg));

        //get a message, push into queue
        size_t msg_len;
        const uint8_t* bytes_in = pmt::u8vector_elements(data, msg_len);

        gr::thread::scoped_lock guard(d_mutex);
        for(size_t i = 0; i < msg_len; i++)
        {
            q.push(bytes_in[i]);
        }
    }

    int
    pdu_to_stream_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
        uint8_t *out = (uint8_t *) output_items[0];
        uint8_t *amp = (uint8_t *) output_items[1];

        static int counter = 0;
        // Do <+signal processing+>
        for(int i = 0; i < noutput_items; i++)
        {
            gr::thread::scoped_lock guard(d_mutex);
            if(q.empty()) {
                if(counter) {
                    //std::cout << "packet " << counter << " bytes" << std::endl;
                    counter = 0;
                }
                *out++ = d_filler;
                *amp++ = 0;
            } else {
                counter++;
                *out++ = q.front();
                //std::cout << (int)q.front() << ",";
                q.pop();
                *amp++ = 1;
            }
        }

        // Tell runtime system how many output items we produced.
        return noutput_items;
    }

  } /* namespace kcsa */
} /* namespace gr */
