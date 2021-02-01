global ft_strcpy

section .text
ft_strcpy: mov rax, 0
again:
	mov cl, [rsi + rax]
	mov [rdi + rax], cl

	cmp cl, 0
	je return
	
	inc rax 
	jmp again

return:
	mov rax, rdi
	ret