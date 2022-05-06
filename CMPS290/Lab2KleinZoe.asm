.data
# section 1 overview
String1: .asciiz "This section of the program will take in two values, add them together, and then return the result.\n"

# read in the values
String2: .asciiz "Enter the first value: "
String3: .asciiz "Enter the second value: "

# assign the string into a variable
.text
la $s0, String1
la $s1, String2
la $s2, String3

# print text
li $v0, 4
move $a0, $s0 #section overview
syscall

li $v0, 4
move $a0, $s1 #print enter value 1
syscall

# enter first value
li $v0, 5
syscall 
move $t0, $v0

li $v0, 4
move $a0, $s2 #print enter value 2
syscall

# enter second value
li $v0, 5
syscall
move $t1, $v0

# add the values together
add $t2, $t0, $t1

#print the sum
li $v0, 1
move $a0, $t2
syscall




# section 2
.data
String4: .asciiz "\n\nThis section of the program will take in a string and echo it back to you.\n"
String5: .asciiz "Enter your string here: "
String6: .asciiz "The String you entered was: "
Characters: .space 50

# assign the string into a variable
.text
la $s0, String4
la $s1, String5
la $s2, String6

# print text
li $v0, 4
move $a0, $s0 #section overview
syscall

# print text
li $v0, 4
move $a0, $s1 #have user input string
syscall

# enter string
li $v0, 8
la $a0, Characters
li $a1, 50
syscall

# print text
li $v0, 4
move $a0, $s2 # you have entered
syscall

# print string
li $v0, 4
la $a0,Characters  #read string back to user
syscall


#close program
li $v0, 10
move $a0, $v0
syscall