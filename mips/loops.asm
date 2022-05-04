# Program: 
# loop stuff
#
#  int x = 0;
#  for(int i = 0; i < 5; i++) {
#     x = x + i;
#  }
#  System.out.println(x);
#
#  while(i > 0) {
#    x = x * 2;
#    i--;
#  }
# System.out.println(x);

	.data 	# data declaration section; specifies values to be stored in memory

	.text 	# Start of code section
	.globl main
	
main:
	li $s0, 0 # int x = 0
	li $t0, 0 # int i = 0
	li $t1, 2

loop:
	bge $t0, 5, print0 # i < 5
	add $s0, $s0, $t0 # x = x + i
	addi $t0, $t0, 1  # i++
	b loop
	
print0:
	li $v0, 1
	la $a0, ($s0)
	syscall
	
while: 	
	ble $t0, $zero, print1
	mult $s0, $t1
	subi $t0, $t0, 1
	b while	
	
print1:
	li $v0, 1
	la $a0, ($s0)
	syscall
	
	# exit the program
exit:	li	$v0, 10  
	syscall	
	
