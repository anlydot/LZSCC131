# Compute first twelve Fibonacci numbers and put in array, then print

	.globl main
	.data

fibs:	.word	0 : 12		# "array" of 12 words to contain fib values
size:	.word	12		# size of "array"
#	.byte	-0x100
	.text
	