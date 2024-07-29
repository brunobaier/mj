;; Diretivas
;; Origem na memória
org 0x7c00
;; Especifica a notação de 16 bits
bits 16

main:	

halt:	
	;; Parada da CPU
	hlt
	;; Pula para o endeço do halt
	jmp halt


	;; Diretiva times define a quantidade de bytes 510 - a diferença do que foi usado antes
	;; db preenche a diferença até os 510 bytes
	;; dw define dois bytes
times 510-($-$$) db 0
dw 0xaa55
