.global main
.data
x:
	.word 19
y:
	.word 13
.text
main:
	ldr r0, addressOfX
	ldr r1, addressOfY
	ldr r0, [r0]
	ldr r1, [r1]
	cmp r0, r1
	beq else
	add r0, r0, r1
	b end
else:
	sub r0, r0, r1
end:
	bx lr
addressOfX: .word x
addressOfY: .word y
