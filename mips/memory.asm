# Program: 

#########################################################
#     #  app1 # app$$$ # facebook #                      #
#                                                       #
#                                                       #
#                                                       #
#########################################################


	.data 	# data declaration section; specifies values to be stored in memory
number:		.word 24
name:		.asciiz "heisenberg"

	.text 	# Start of code section
	.globl main
	
main:
	# loading the value 24 from data memory into register $t0
	lw $t0, number
	# loading the address in memory of the value 24
	# label used as address mode
	la $t1, number
	
	# register mode
	lw $t2, ($t1)
	
	# immediate mode
	lw $t3, 8192 # address 0x00002000
	
	# base mode
	lw $t4, 0($t1)


	# exit the program
exit:	li	$v0, 10  
	syscall	
	
