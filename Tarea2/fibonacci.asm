    org    100h

    mov     ax, 0000h 
    mov     bx, 0000h
    mov     cx, 0000h
    mov     ax, 1d
    mov     di, 1d
    mov     cx, 0016d
    mov     dx,0000h

    lupita:mov    [di + 220h], ax
    
    inc     di
    
    mov     [200h],ax
    add     ax, dx
    mov     dx, [200h]

    loop    lupita
      

    int 20h
