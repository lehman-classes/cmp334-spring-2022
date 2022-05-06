# Program: 
# playing with memory allocation
# register - data segment - register
#########################################################
#     #  app1 # app$$$ # facebook #                      #
#                                                       #
#                                                       #
#                                                       #
#########################################################


	.data 	# data declaration section; specifies values to be stored in memory
number:		.word 24
name:		.asciiz "heisenberg"
breakline: 	.asciiz "\n"
placeholder: 	.byte 1

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
	
	la $t4, name
	# base mode
	lb $t5, 0($t4)
	sb $t5, placeholder
	li $v0, 4
	la $a0, placeholder
	syscall
	la $a0, breakline
	syscall
	
	lb $t5, 1($t4)
	sb $t5, placeholder
	li $v0, 4
	la $a0, placeholder
	syscall
	la $a0, breakline
	syscall

	lb $t5, 2($t4)
	sb $t5, placeholder
	li $v0, 4
	la $a0, placeholder
	syscall
	la $a0, breakline
	syscall
	
	lb $t5, 3($t4)
	sb $t5, placeholder
	li $v0, 4
	la $a0, placeholder
	syscall
	la $a0, breakline
	syscall
	#li $v0, 4
	#la $a0, 0($t4)
	#syscall

	# exit the program
exit:	li	$v0, 10  
	syscall	
	
