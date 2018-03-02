	.text
.include "nios_macros.s"
	.global _start
_start:
	orhi		r2, r0, 0xfafa
	ori			r2, r2, 0xafaf
	add 		r3, r0, r0
	andhi 		r8, r0, 0
	addi		r8,r8,1
	addi 		r9, r0, 0
	addi 		r9, r9, 1
	xor 		r11, r11, r11
	nor 		r2, r2, r2

A: 	
	and r10, r8, r2
	beq r10, r0, B
	addi r3, r3, 1

B: 	srl r2, r2, r9
	addi r11, r11, 1
	bne r2, r0, A

C:
	br C

	.end
