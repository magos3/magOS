#ifndef MAGOS_TYPES_H
#define MAGOS_TYPES_H

#define null '\0'
#undef  NULL
#define NULL ((void *)0)

#define TRUE 1
#define FALSE 0 

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef unsigned char byte;

typedef int pid_t;

typedef int (*fn_ptr)(char *);

typedef unsigned short dev_t; /*dev=(major<<8 | minor)*/

#ifndef _SIZE_T
#define _SIZE_T
typedef unsigned int size_t;
#endif


#define _packed_   __attribute__((packed)) 


#endif
