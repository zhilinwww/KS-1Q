
#ifndef SPIFFS_CONFIG_H_
#define SPIFFS_CONFIG_H_

// Following includes are for the linux test build of spiffs
// These may/should/must be removed/altered/replaced in your target
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>

 typedef signed int s32_t;
 typedef unsigned int u32_t;
 typedef signed short s16_t;
 typedef unsigned short u16_t;
 typedef signed char s8_t;
 typedef unsigned char u8_t;

#define  SPIFLASH_CFG_PHYS_SZ               (1024*1024*32)   
#define  SPIFLASH_CFG_PHYS_ERASE_SZ         (64*1024)
#define  SPIFLASH_CFG_PHYS_ADDR             (0) 
#define  SPIFLASH_CFG_LOG_PAGE_SZ           (256)  
#define  SPIFLASH_CFG_LOG_BLOCK_SZ          (64*1024)  


#define SPIFFS_CACHE						(1)
#define SPIFFS_CACHE_WR						(1)
//#define SPIFFS_TEMPORAL_FD_CACHE			(1)
 
// Set generic spiffs debug output call.
#ifndef SPIFFS_DGB
#define SPIFFS_DBG(...)
#endif
// Set spiffs debug output call for garbage collecting.
#ifndef SPIFFS_GC_DGB
#define SPIFFS_GC_DBG(...)
#endif
// Set spiffs debug output call for caching.
#ifndef SPIFFS_CACHE_DGB
#define SPIFFS_CACHE_DBG(...)
#endif
// Set spiffs debug output call for system consistency checks.
#ifndef SPIFFS_CHECK_DGB
#define SPIFFS_CHECK_DBG(...)
#endif

// Enable/disable API functions to determine exact number of bytes
// for filedescriptor and cache buffers. Once decided for a configuration,
// this can be disabled to reduce flash.
#ifndef SPIFFS_BUFFER_HELP
#define SPIFFS_BUFFER_HELP              0
#endif

// Enables/disable memory read caching of nucleus file system operations.
// If enabled, memory area must be provided for cache in SPIFFS_mount.
#ifndef  SPIFFS_CACHE
#define SPIFFS_CACHE                    1
#endif
#if SPIFFS_CACHE
// Enables memory write caching for file descriptors in hydrogen
#ifndef  SPIFFS_CACHE_WR
#define SPIFFS_CACHE_WR                 1
#endif

// Enable/disable statistics on caching. Debug/test purpose only.
#ifndef  SPIFFS_CACHE_STATS
#define SPIFFS_CACHE_STATS              1
#endif
#endif

// Always check header of each accessed page to ensure consistent state.
// If enabled it will increase number of reads, will increase flash.
#ifndef SPIFFS_PAGE_CHECK
#define SPIFFS_PAGE_CHECK               1
#endif

// Define maximum number of gc runs to perform to reach desired free pages.
#ifndef SPIFFS_GC_MAX_RUNS
#define SPIFFS_GC_MAX_RUNS              3
#endif

// Enable/disable statistics on gc. Debug/test purpose only.
#ifndef SPIFFS_GC_STATS
#define SPIFFS_GC_STATS                 1
#endif

// Garbage collecting examines all pages in a block which and sums up
// to a block score. Deleted pages normally gives positive score and
// used pages normally gives a negative score (as these must be moved).
// To have a fair wear-leveling, the erase age is also included in score,
// whose factor normally is the most positive.
// The larger the score, the more likely it is that the block will
// picked for garbage collection.

// Garbage collecting heuristics - weight used for deleted pages.
#ifndef SPIFFS_GC_HEUR_W_DELET
#define SPIFFS_GC_HEUR_W_DELET          (5)
#endif
// Garbage collecting heuristics - weight used for used pages.
#ifndef SPIFFS_GC_HEUR_W_USED
#define SPIFFS_GC_HEUR_W_USED           (-1)
#endif
// Garbage collecting heuristics - weight used for time between
// last erased and erase of this block.
#ifndef SPIFFS_GC_HEUR_W_ERASE_AGE
#define SPIFFS_GC_HEUR_W_ERASE_AGE      (50)
#endif

// Object name maximum length.
#ifndef SPIFFS_OBJ_NAME_LEN
#define SPIFFS_OBJ_NAME_LEN             (32)
#endif

// Size of buffer allocated on stack used when copying data.
// Lower value generates more read/writes. No meaning having it bigger
// than logical page size.
#ifndef SPIFFS_COPY_BUFFER_STACK
#define SPIFFS_COPY_BUFFER_STACK        (64)
#endif

// SPIFFS_LOCK and SPIFFS_UNLOCK protects spiffs from reentrancy on api level
// These should be defined on a multithreaded system

// define this to entering a mutex if you're running on a multithreaded system
#ifndef SPIFFS_LOCK
#define SPIFFS_LOCK(fs)
#endif
// define this to exiting a mutex if you're running on a multithreaded system
#ifndef SPIFFS_UNLOCK
#define SPIFFS_UNLOCK(fs)
#endif


// Enable if only one spiffs instance with constant configuration will exist
// on the target. This will reduce calculations, flash and memory accesses.
// Parts of configuration must be defined below instead of at time of mount.
#ifndef SPIFFS_SINGLETON
#define SPIFFS_SINGLETON 0
#endif

#if SPIFFS_SINGLETON
//// Instead of giving parameters in config struct, singleton build must
//// give parameters in defines below.
#ifndef SPIFFS_CFG_PHYS_SZ
#define SPIFFS_CFG_PHYS_SZ(ignore)        (1024*1024*32)
#endif
#ifndef SPIFFS_CFG_PHYS_ERASE_SZ
#define SPIFFS_CFG_PHYS_ERASE_SZ(ignore)  (32768)
#endif
#ifndef SPIFFS_CFG_PHYS_ADDR
#define SPIFFS_CFG_PHYS_ADDR(ignore)      (0)
#endif
#ifndef SPIFFS_CFG_LOG_PAGE_SZ
#define SPIFFS_CFG_LOG_PAGE_SZ(ignore)    (256)
#endif
#ifndef SPIFFS_CFG_LOG_BLOCK_SZ
#define SPIFFS_CFG_LOG_BLOCK_SZ(ignore)   (32768)
#endif
#endif

//// Set SPFIFS_TEST_VISUALISATION to non-zero to enable SPIFFS_vis function
//// in the api. This function will visualize all filesystem using given printf
//// function.
#ifndef SPIFFS_TEST_VISUALISATION
#define SPIFFS_TEST_VISUALISATION         1
#endif
#if SPIFFS_TEST_VISUALISATION
#ifndef spiffs_printf
#define spiffs_printf(...)                printf(__VA_ARGS__)
#endif
// spiffs_printf argument for a free page
#ifndef SPIFFS_TEST_VIS_FREE_STR
#define SPIFFS_TEST_VIS_FREE_STR          "_"
#endif
// spiffs_printf argument for a deleted page
#ifndef SPIFFS_TEST_VIS_DELE_STR
#define SPIFFS_TEST_VIS_DELE_STR          "/"
#endif
// spiffs_printf argument for an index page for given object id
#ifndef SPIFFS_TEST_VIS_INDX_STR
#define SPIFFS_TEST_VIS_INDX_STR(id)      "i"
#endif
// spiffs_printf argument for a data page for given object id
#ifndef SPIFFS_TEST_VIS_DATA_STR
#define SPIFFS_TEST_VIS_DATA_STR(id)      "d"
#endif
#endif

// Types depending on configuration such as the amount of flash bytes
// given to spiffs file system in total (spiffs_file_system_size),
// the logical block size (log_block_size), and the logical page size
// (log_page_size)

// Block index type. Make sure the size of this type can hold
// the highest number of all blocks - i.e. spiffs_file_system_size / log_block_size
typedef u16_t spiffs_block_ix;
// Page index type. Make sure the size of this type can hold
// the highest page number of all pages - i.e. spiffs_file_system_size / log_page_size
typedef u16_t spiffs_page_ix;
// Object id type - most significant bit is reserved for index flag. Make sure the
// size of this type can hold the highest object id on a full system,
// i.e. 2 + (spiffs_file_system_size / (2*log_page_size))*2
typedef u16_t spiffs_obj_id;
// Object span index type. Make sure the size of this type can
// hold the largest possible span index on the system -
// i.e. (spiffs_file_system_size / log_page_size) - 1
typedef u16_t spiffs_span_ix;

#endif /* SPIFFS_CONFIG_H_ */
