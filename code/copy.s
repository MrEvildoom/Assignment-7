.pos 0x100
main:
  # initialize the stack pointer
  # call the copy procedure
  halt

.pos 0x200
copy:
  # save the return address
  # int dst[2];
  # int i = 0;
  # while (src[i] != 0) {
  #   dst[i] = src[i];
  #   i++;
  # }
  # dst[i]=0;
  # restore the return address
  # jump to return address

.pos 0x2000
src:
    .long 0x1
    .long 0x0

.pos 0x3000
stackTop:     .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
              .long 0x0
stackBtm      .long 0x0
