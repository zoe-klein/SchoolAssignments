# loop for user to enter numbers, end program when a 0 is entered
# read in input from the user
# counter for how many numbers entered (increment)
# input in a variable, move to another, then add that plus the new number
# divide by the numbers entered (but not including 0)



#loop
while:
	#read input from user
	li $v0, 5
	syscall
	#store input in varable
	move $t0, $v0
	
	#if $t0 equal to 0, exit program
	beqz $t0, exit
	
	#add
	add $t1, $t1, $t0 # $t0 starts out with 0 so 0 + $t0
	addi $s0, $s0, 1 # increment by 1 everytime it loops
	#addi for constants (register + constant numbers)
	div $s1, $t1, $s0 #find average
	
	j while # jump back to start of loop
	
exit:

# print average
li $v0, 1
move $a0, $s1
syscall

# close program
li $v0, 10
syscall
