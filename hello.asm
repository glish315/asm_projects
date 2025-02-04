;;Declare static data with lifetime.
section .data
    msg db  "Hello World" ;;String "msg" variable with the value "Hello World".



;;Section contains instruction for the program.
section .text
    global _start ;;Mark the "_start" symbol as global so that it is visible to linker.



;;Entry point of the program
_start:
    ;;Specify the number of the system call to "sys_write".
    mov     rax, 1
    ;;Set the first argument of "sys_write" to stdout.
    mov     rdi, 1      
    ;;Set the second argument of "sys_write" to the "msg" variable.
    mov     rsi, msg
    ;;Set the third argument th the lenght of the "msg" variable's value (13 bytes).
    mov     rdx, 13



    ;;Call the "sys_write" system call
    syscall
    ;;Assingie the number of the system call to "sys_exit".
    mov     rax, 60
    ;;Set the first argument of "sys_exit" to 0. Like "return 0" in C.
    mov     rdi, 0
    ;;Call the "sys_exit" system call.
    syscall

