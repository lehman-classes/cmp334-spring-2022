# Program: Handling String

# Translate as close as possible the following Java code to MIPS Assembly
# 
# Ask user for their name and print out the first, middle and last character in the name
# For example: If the name is Hendrix, the output should be Hdx
# System.out.print("What's your name? ");
# Scanner scanner = new Scanner(System.in);
# String name = scanner.next();
# System.out.println(name.charAt(0) + "" +  name.charAt(name.length/2) + "" + name.chartAt(name.length));

	.data 	# data declaration section; specifies values to be stored in memory
Msg: 	.asciiz "What's your name? "
Ans:	.asciiz "*"

	.text 	# Start of code section
	.globl main
	
main:
	li $v0, 4
	la $a0, Msg
	syscall
	
	li $v0, 8
	la $a0, Ans
	li $a1, 100
	syscall
	
	li $v0, 11
	la $s0, Ans
	lb $s1, 0($s0)
	la $a0, ($s1)
	syscall
	
	j exit

length:
	addi $t0, $zero, 0
walk:
	lb $t1, 0($s0)
	beqz $t1, finish
	
finish:
	jr $ra

	# exit the program
exit:	li	$v0, 10  
	syscall	
	
