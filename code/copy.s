.pos 0x100
main:           ld   $stackBtm, r5    # r5 = stackptr
                gpc  $6, r6           # r6 = pc + 6
                j    copy             # jmp to copy
                halt


.pos 0x200
copy:           deca r5               # allocate callee part of copy's frame
                st   r6, 0x0(r5)      # save ra on stack

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
