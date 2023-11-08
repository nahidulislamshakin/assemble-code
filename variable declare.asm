.model small
.stack 100h 

.data
a db 5                  ;declaring variable
b db ?  

.code
main proc
    mov ax,@data        ;assigning data segment
    mov ds,ax
    
    mov ah,1            ;taking input
    int 21h
    mov b,al 
                        ;printing new line
    mov ah,2
    mov dl,10
    int 21h  
    mov dl,13
    int 21h
                                 
    mov ah,2
    mov dl,a            ;printing output
    add dl,48
    int 21h  
    
    mov ah,2
    mov dl,32           ;printing space
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    exit:
    mov ah,4ch          ;exiting from program
    int 21h
    main endp

end main