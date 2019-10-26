.data
.fizz : .string "Fizz"
.buzz : .string "Buzz"
.endline : .string ":%d \n"
.global main

.newline:
  push %rdi
  mov $.endline, %rdi
  pop %r8
  mov %r8, %rsi
  push %r8
  xor %rax, %rax
  call printf
  pop %rdi
  jmp _fizzbuzz
.printfizz:
  push %rdi
  mov $.fizz, %rdi
  xor %rax, %rax
  call printf
  pop %rdi
  ret

.checkThree: # Store what to divide in %rdi
  xor %rdx, %rdx
  mov %rdi, %rax
  mov $3, %rbx
  idiv %rbx
  cmp $0, %rdx
  je .printfizz
  ret

fizzbuzz:         # maximum value in %rdi
  mov $0, %r8
  mov $5, %r10
  push %r8
_fizzbuzz:
  pop %r8
  inc %r8
  push %rdi
  mov %r8, %rdi
  call .checkThree
  pop %rdi
  # call .newline
  cmp %r8, %rdi
  push %r8
  jge .newline
  ret

main:
  mov $10, %rdi
  call fizzbuzz
  ret

