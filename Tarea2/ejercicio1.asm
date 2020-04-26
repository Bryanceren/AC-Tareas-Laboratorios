    org    100h
    

section	.text
	; Ejercicio 1
	mov	cx, 0000h

	mov	ax, 1d ;Primer numero
	mov	bx, 1d ;Segundo numero
	add	ax, bx 
	mov	bx, 3d ;Tercer numero
	add	ax, bx
	mov	bx, 1d ;Cuarto numero
	add	ax, bx
	mov	bx, 7d ;Quinto numero
	add	ax, bx
	mov	bx, 5d ; Numero de notas
	div	bx

	mov	di, 0d
	mov	cx, [len]

write	mov	bl, [comnt+di]
	mov	[di+200h], bl
	inc	di

	loop	write

section.data

    comnt      db      "me recupero"
    len         equ     $-comnt