# print out the positions and their values up to 16 bits from most significant
# to least significant

#i == 15
li $s0, 15

# loop for positions
while:
	blt $s0, 0, exit #once i == 0, then exit
	
	#print the position
	print:
	li $v0, 1
	move $a0, $s0
	syscall
	
	# tab
	li $v0, 11
	li $a0, 9
	syscall
	
	#i--
	sub $s0, $s0, 1
	#go back to while
	j while

exit :
#exit loop after 0



# new line
li $v0, 11
li $a0, 10
syscall


li $s1, 32768

# loop for values
shiftright:
	blt $s1, 1, exit2 #once i == 1, then exit
	
	# print value
	li $v0, 1
	move $a0, $s1
	syscall
	
	#tab
	li $v0, 11
	li $a0, 9
	syscall
	
	# shift right
	srl $s1, $s1, 1 #shift right 1
	
	# loop
	j shiftright

exit2:
# exit after it hits 0

# close the program
li $v0, 10
syscall