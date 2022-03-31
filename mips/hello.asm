# Program: Hello, World!


	.data 	# data declaration section; specifies values to be stored in memory

# java
# String greetings = "Hello, World!";
Greetings:	.asciiz  "\nHello, World!\n"


	.text 	# Start of code section
	.globl main
	
main:
	li 	$v0, 4		# system call code for printing string = 4
	la	$a0, Greetings	# load address of string to be printed into $a0
	
	# print(greetings);
	syscall 		# call operating system to perform operation
				# $v0 specifies the system function called
				# syscall takes $v0 (and opt arguments)
	li	$v0, 10
	syscall	
	
