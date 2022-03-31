
	.data 	# data declaration section; specifies values to be stored in memory

	.text 	# Start of code section
	.globl main
	
main:
	li $v0, 31
	li $a0, 72
	li $a1, 1000
	li $a2, 4
	li $a3, 64
	syscall
	
	li $v0, 32
	li $a0, 500

	li $v0, 31
	li $a0, 64
	li $a1, 1000
	li $a2, 4
	li $a3, 64
	syscall

	li $v0, 32
	li $a0, 500
	
	li $v0, 31
	li $a0, 67
	li $a1, 1000
	li $a2, 4
	li $a3, 64
	syscall
		
	# exit the program
exit:	li	$v0, 10  
	syscall	
	
