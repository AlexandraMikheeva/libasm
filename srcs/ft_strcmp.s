global ft_strcmp

section .text
ft_strcmp: mov rax, 0
again:
	mov dl, byte [rdi + rax]
	mov bl, byte [rsi + rax]

	cmp dl, 0
	je return

	cmp dl, bl
	jne return

	inc rax
	jmp again

return:
	sub dl, bl
	movsx rax, dl
	ret