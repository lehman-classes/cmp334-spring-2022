.data

School: .asciiz "Lehman" 
Msg0:	.asciiz "My school is "

.text 

li $v0, 4
la $a0, Msg0
syscall

la $a0, School
syscall