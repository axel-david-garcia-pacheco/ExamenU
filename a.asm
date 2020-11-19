Codigo:

CR EQU 13 

LF EQU 10 

 

Datos Segment

    Mensaje db CR,LF, 'Hola Mundo (con Funcion o Procedimiento)',CR,LF,'$'

Datos Ends

 

Pila Segment Stack

    db 64 DUP('PILA') 

Pila Ends

 

Codigo Segment

    hola proc far

    Assume CS:Codigo,DS:Datos,SS:Pila

    mov ax,Datos 

    mov ds,ax 
    
    lea dx,Mensaje 

    call Escribe

    mov ax,4c00h

    int 21h

    hola endp

Escribe proc

    mov ah,9

    int 21h

    ret

Escribe endp

Codigo Ends

End hola