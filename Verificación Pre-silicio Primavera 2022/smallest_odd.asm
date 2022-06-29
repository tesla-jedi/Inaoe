# A demonstration of some simple MIPS instructions
# used to test QtSPIM



	# Declare main as a global function
	.globl main 
	number: .space 20
	# All program code is placed after the
	# .text assembler directive
	.text 		

# The label 'main' represents the starting point
# number: .word 3,4,5,6,7
main:

	addi $s1,$0,0  #module
	addi $s0,$0,0  #i
	addi $t0,$0,5  #t0=5


	addi $s2, $zero, 68
	addi $s3, $zero, 96
	addi $s4, $zero, 46
	addi $s5, $zero, 87
	addi $s6, $zero, 55
#index = $t1 array
		addi $t1, $zero, 0
	sw $s2, number($t1)
		addi $t1, $t1, 4
	sw $s3, number($t1)
		addi $t1, $t1, 4
	sw $s4, number($t1)
		addi $t1, $t1, 4
	sw $s5, number($t1)	
		addi $t1, $t1, 4
	sw $s6, number($t1)


	addi $t1, $zero, 0 #clear $t1 to 0 	

	addi $s2, $zero, 0  # flag
	addi $s3, $zero, 0  # menorimp

	loop: bne $s0,$t0,for #if i !=5 salta a for
		j end
	for:
		#finding module  1 odd, 0 even
		lw $t3, number($t1)
		div $s1,$t3,2 
		mul $s1,$s1,2
		sub $s1, $t3, $s1  #$s1 module

		bne $s1, 1, else  #if module !=1 go else
			bgtz $s2,findless #if flag > 0,  
				move $s3, $t3 #set the first odd number
				addi $s2, $zero, 1 #close the funtion
			findless:
				bgt $t3,$s3,else #compare the previous odd to find the smallest
				move $s3, $t3 #save the smallest odd number
	else:

	
		addi $t1, $t1, 4 # set the next position on array
		addi $s0, $s0,1 #i=i+1

		j loop
	end:

	# by placing its code in $v0. The code for exit is "10"
			li $v0, 10 # Sets $v0 to "10" to select exit syscall

		syscall # Exit
	# All memory structures are placed after the
	# .data assembler directive
	.data