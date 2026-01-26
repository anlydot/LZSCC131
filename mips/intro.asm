	.text
	.globl main

# g: $s1, h: $s2, i: $s3, j: $s4

main:
	# two ways to get data into registers, load immediate (li):
	li	$s1, 3		# g = 3
	li	$s2, 7		# h = 7

	#??and using a bitwise OR with zero:
	ori	$s3, $zero, 1	# i = 1
	ori	$s4, $zero, 3	# j = 3

	# perform calculation: f = (g + h) - (i + j):
	add	$t0, $s1, $s2	# t0 = g + h
	add	$t1, $s3, $s4	# t1 = i + j
	sub	$s0, $t0, $t1	# f = t0 - t1
	
	# tell operating system that we're done and want to exit:
	li	$v0, 11		# exit
	syscall			#