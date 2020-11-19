CR EQU 13
LF EQU 10

Datos Segment 
    Lineal1 DB CR,LF,'Rafel',CR,LF,'$'
    Lineal2 DB 'Tecnologico de iz',CR,LF,'$'
    Lineal3 DB 'Ing sis',CR,LF,'$'
    Lineal4 DB 'El rey ',CR,LF,'$'
Datos ends

Pila Segment stack
    
    DB 64 DUP ('Pila')
Pila ends

Codigo Segment
    
    LN proc far
    
    assume CS:Codigo,DS:Datos,SS:Pila
    mov AX,Datos
    mov DS,AX
    lea DX,Lineal1
    Call Escribe
    lea DX,Lineal2
    Call Escribe
    lea DX,Lineal3
    Call Escribe
    lea DX,Lineal4
    Call Escribe
    mov AX,4C00h
    int 21h
    
    LN endp
    
    Escribe proc
    mov AH,9
    int 21h
    ret
    Escribe endp
    
    Codigo ends
end LN