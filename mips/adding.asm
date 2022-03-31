# Program: Adding


	.data 	# data declaration section; specifies values to be stored in memory

Sum:	.asciiz  "Sum: "


	.text 	# Start of code section
	.globl main
	
main:
	# adding the values in registers $t1, $t2 and $t3
	# assume that $t0 is variable a, $t1 is b, $t2 is c and $t3 is d
	# int b = 7;
	# int c = 5;
	# int d = 9;
	# write assembly code to translate the following java code
	# a = b + c + d
	li	$t1, 7 # int b = 7
	li	$t2, 5 # int c = 5
	add	$t0,$t1, $t2 # a = b + c;
	
	li	$t3, 9 # int d = 9
	add	$t0, $t0, $t3 # a = a + d;
	
	# print result
	li	$v0, 4
	la	$a0, Sum
	syscall
	
	li	$v0, 1
	la	$a0, ($t0)
	syscall


	# exit the program
exit:	li	$v0, 10  
	syscall	
	
