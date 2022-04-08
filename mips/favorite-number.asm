# Program: Favorite Number

# Translate as close as possible the following Java code to MIPS Assembly
# 
# Ask the user for their favorite number and add 7 to it.
#
# System.out.print("What's your favorite number? ");
# Scanner scanner = new Scanner(System.in);
# int favoriteNumber = scanner.nextInt();
# int newValue = favoriteNumber + 7;
# System.out.println("new value is: " + newValue);

	.data 	# data declaration section; specifies values to be stored in memory
Msg0:	.asciiz "What's your favorite number? "
Msg1:	.asciiz "\nnew value is: "
Msg2: 	.asciiz "Max Level Reached"

	.text 	# Start of code section
	.globl main
	
main:
	li $v0, 4
	la $a0, Msg0
	syscall
	
	li $v0, 5
	syscall 
	
	addi $t0, $v0, 10
	beq $t0, 17, lucky
	
	li $v0, 4
	la $a0, Msg1
	syscall
	
	li $v0, 1
	la $a0, ($t0)
	syscall
	
	j exit

lucky:
	li $v0, 4
	la $a0, Msg2
	syscall
	
	# exit the program
exit:	li	$v0, 10  
	syscall	
	
