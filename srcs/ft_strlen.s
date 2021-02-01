global ft_strlen

section .text
ft_strlen: mov rax, 0
again:
	cmp byte [rdi], 0
	jne incr
	
	ret

incr:
	inc rax
	inc rdi
	jmp again