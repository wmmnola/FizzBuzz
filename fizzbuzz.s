
.fizz : .string "Fizz"
.buzz : .string "Buzz"
.endline : .string ":%d \n"
.global main

.newline:
  push %rdi
  push %rsi
  mov $.endline, %rdi
  mov %r8, %rsi
  xor %rax, %rax
  call printf
  pop %rdi
  pop %rsi
  jmp _fizzbuzz
.printfizz:
  push %rdi
  push %rsi
  mov $.fizz, %rdi
  xor %rax, %rax
  call printf
  pop %rsi
  pop %rdi
  ret

.printbuzz:
  push %rdi
  push %rsi
  mov $.buzz, %rdi
  xor %rax, %rax
  call printf
  pop %rsi
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

.checkFive: #Store what to divide in %rdi
  xor %rdx, %rdx
  mov %rdi, %rax
  mov $5, %rbx
  idiv %rbx
  cmp $0, %rdx
  je .printbuzz
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
  call .checkFive
  pop %rdi
  cmp %r8, %rdi
  push %r8
  jge .newline
  pop %r8
  ret

main:
  mov $30, %rdi
  call fizzbuzz
  ret

