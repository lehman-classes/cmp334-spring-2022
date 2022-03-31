# Program: Java-like

# Translate as close as possible the following Java code to MIPS Assembly
# String name = "Your Name";
# int age = 1;
# System.out.println("My name is " + name + ". I am " + age + " old");

	.data 	# data declaration section; specifies values to be stored in memory
Name: 	.asciiz "Hendrix"
Age:	.asciiz "0"
Msg0: 	.asciiz "My name is "
Msg1:	.asciiz ". I am "
Msg2:	.asciiz " old\n"

	.text 	# Start of code section
	.globl main
	
main:
	li $v0, 4
	# opcode <dest>, <address>	
	la $a0, Msg
	syscall 
	
	li $v0, 4
	la $a0, Name
	syscall 
	
	li $v0, 4
	la $a0, Msg1
	syscall 
	
	li $v0, 4
	la $a0, Age
	syscall 
	
	li $v0, 4
	la $a0, Msg2
	syscall 

	# exit the program
exit:	li	$v0, 10  
	syscall	
	
