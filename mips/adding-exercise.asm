# Program: Adding

# Translate as close as possible the following Java code to MIPS Assembly
# int x = 568;
# int y = 2391;
# int z = 9978542;
# int a = 0;
# a = a + 12 + x + y + z;
# System.out.println("a is equal to " + a);

	.data 	# data declaration section; specifies values to be stored in memory

Msg:	.asciiz "a is equal to "

	.text 	# Start of code section
	.globl main
	
main:
	# addi $t0, $zero, 568
	li $t0, 568
	li $t1, 2391
	li $t2, 99999978542
	li $t3, 0 # $t3 is variable a
	add $t3, $t0, $t1
	add $t3, $t3, $t2
	addi $t3, $t3, 12
	
	li $v0, 4
	la $a0, Msg
	syscall
	
	li $v0, 1
	la $a0, ($t3)
	syscall

	# exit the program
exit:	li $v0, 10  
	syscall	
	
