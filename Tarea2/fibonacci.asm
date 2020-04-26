    org    100h

    mov     ax, 0000h 
    mov     bx, 0000h
    mov     cx, 0000h
    mov    ax, 16d
    mov    bx, 1d
    mov    cx, 1d
    mov     eax, 255d
    mov     dx,0000h

    lupita:mov    [220h + bx], cx
    
    inc     bx
    
    mov     [200h],cx
    add     cx, dx
    mov     dx, [200h]

    cmp     cx,eax
    ja      lupita2

    cmp     ax,bx
    ja      lupita

    cmp     ax,bx
    je      lupita

    

    lupita2:mov    [220h  + bx + 0001h], cx
    inc     bx
    
    mov     [200h],cx
    add     cx, dx
    mov     dx, [200h]

    cmp     ax,bx
    ja      lupita2

    cmp     ax,bx
    je      lupita2



      

    int 20h
