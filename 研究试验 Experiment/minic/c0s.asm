assume cs:code
data segment

DB 128 dup(0)

data ends

code segment
start:
    mov ax,data
    mov ds,ax
    mov ss,ax
    mov sp,128

    call _main

    mov ax,4c00h
    int 21h

_main:

code ends
end start