/* -*- c++ -*- */
/*
 * Copyright 2017 <+YOU OR YOUR COMPANY+>.
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


#ifndef INCLUDED_KCSA_SYNC_DET_B_H
#define INCLUDED_KCSA_SYNC_DET_B_H

#include <kcsa/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
  namespace kcsa {

    /*!
     * \brief <+description of block+>
     * \ingroup kcsa
     *
     */
    class KCSA_API sync_det_b : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<sync_det_b> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of kcsa::sync_det_b.
       *
       * To avoid accidental use of raw pointers, kcsa::sync_det_b's
       * constructor is in a private implementation
       * class. kcsa::sync_det_b::make is the public interface for
       * creating new instances.
       */

       //len_mode : true = fixed, false = variable
      static sptr make(uint64_t sync_word, uint64_t sync_mask, bool len_mode, int len, uint8_t nrz, int maxerrs);
    };

  } // namespace kcsa
} // namespace gr

#endif /* INCLUDED_KCSA_SYNC_DET_B_H */
