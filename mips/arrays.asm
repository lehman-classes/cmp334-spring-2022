# Program: 
# array stuff
#
#  int[5] x = {1,3,5,7,9};
#  for(int i = 0; i < 5; i++) {
#    System.out.println(x[i]);
#  } 

	.data 	# data declaration section; specifies values to be stored in memory
nums:	.word 1, 3, 5, 7, 9
size:   .word 5

	.text 	# Start of code section
	.globl main
	
main:
	la $t0, nums
	li $t1, 0
	lw $t2, size

print_loop:
	beq $t1, $t2, exit
	lw $a0, ($t0)
	li $v0, 1
	syscall
	
	addi $t1, $t1, 1
	addi $t0, $t0, 4
	j print_loop
	
	# exit the program
exit:	li	$v0, 10  
	syscall	
	
