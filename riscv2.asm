.global _start
_start:        
        li x10, 0           
        li x17, 5            
        ecall
        jal x1, func
        li x17, 1
	ecall 	                                         	                                         
        addi x17, x0, 93         
        addi x10, x0, 13
	ecall
        
func:
	 addi sp,sp,-16
	 sd   x1,8(sp)
	 sd   x10,0(sp)
	 addi x7,x0,1
	 bge  x10,x7,L1
	 addi x10,x0,5
	 addi sp,sp,16
	 jalr x0,0(x1)
	 
L1: 	 addi x10,x10,-1
	 add x29,x10,x0
	 jal  x1,func
	 addi x6,x10,0
	 ld   x10,0(sp)
	 ld   x1,8(sp)
	 addi sp,sp,16
	 add x30, x10,x0
	 slli  x10,x6,1
	 add x10,x10,x30	 
	 jalr x0,0(x1)	 	 
	 	 
     
