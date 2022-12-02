li x10, 0           
li x17, 5            
ecall
	add x18, x0, x0
	add x20, x10, x0
	add x6, x3, x0
	add x7,x0,x0
getElements:
	bge x18, x20, sortArray
	li x10, 0           
	li x17, 5            
	ecall
	sd x10, 0(x6)
	addi x6,x6, 8	
	addi x18, x18, 1
	beq x0,x0,getElements
	
	sortArray:
		add x23, x0, x0
			loop1:
			bge x23, x20, printArray	
			addi x19, x0, 1
				loop2:
				sub x5,x20,x23
				bge x19,x5,loopexit1
				addi x28, x19, -1
				slli x28, x28,3
				add x28,x3,x28
				ld x29,0(x28)
				ld x30,8(x28)
				bge x30,x29,loopexit2
				add x31,x0,x29
				sd x30, 0(x28)
				sd x31, 8(x28)
				beq x0,x0,loopexit2
						loopexit1:
						addi x19,x19,1
						addi x23, x23, 1
						beq x0,x0, loop1
						loopexit2:
						addi x19, x19, 1
						beq x0,x0, loop2
				
	
	printArray:
	bge x7, x20, exit
	ld x10,0(x3)
	addi x3,x3,8
	li x17, 1
	ecall
	la a0, spacePrint	        # prepare to print string  
        li a7, 4			# print string
        ecall
	addi x7, x7, 1
	beq x0,x0,printArray

exit:
	addi x17, x0, 93         
        addi x10, x0, 13
	ecall
	
.data	
spacePrint: 
	.string " "
	  
	 
