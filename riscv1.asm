.global _start
_start:
        li x10, 0           
        li x17, 5            
        ecall
        addi x20, x10, 1
        add x18, x0, x0
        loop1:	
        	addi x18, x18, 1
        	bge x18, x20, exit		
		add x19, x0, x0
        	loop2:	
        		bge x19, x18, continue
        		addi x19,x19,1
        		la x10, star	          
        		li x17, 4
			ecall
        		beq x0, x0, loop2
        continue:
        	la x10, line	        
        	li x17, 4
		ecall	
        	beq x0, x0, loop1			

exit:
        addi x17, x0, 93         
        addi x10, x0, 13
	ecall 
.data

star: 
	.string "*"
line: 
	.string "\n"

	
	
