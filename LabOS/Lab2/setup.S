/* Copyright 2020 @AR
 *
 * This the kernel setup, It's the Kernel Entry, but it do nothing :-).  
 *
 */

.att_syntax noprefix
.code16
.global setup_start

setup_start:
   hlt


setup_end:
.end
