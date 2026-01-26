.text
	.globl main

	## Uma tentayive de fazer
	## A = B + 3C
	## A = 2A

main:
	sw	$t0, 4		# int c
	sw	$t1, 5		# int b
	mul	$t0, $t0, 3	# c = c * 3
	add	$t0, $t0, $t1	# b = b + c
	mul	$t1, $t0, $t1	# a = 2a
	
	li	$v0, 11		# exit
	syscall
