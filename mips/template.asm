# Program: Adding

# Translate as close as possible the following Java code to MIPS Assembly
# 
# Ask the user for their favorite number and add 7 to it.
# System.out.print("What's your favorite number? ");
# Scanner scanner = new Scanner(System.in);
# int favoriteNumber = scanner.next();
# int newValue = favoriteNumber + 7;
# System.out.println("new value is: " + newValue);

	.data 	# data declaration section; specifies values to be stored in memory


	.text 	# Start of code section
	.globl main
	
main:



	# exit the program
exit:	li	$v0, 10  
	syscall	
	
