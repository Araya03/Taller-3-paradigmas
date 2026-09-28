.data
arreglo: .word 12, 45, 7, 89, 23, 5  
.text
.global _start
_start:
    la t0, arreglo      
    li t1, 6             
    lw t2, 0(t0)        

    addi t1, t1, -1      
    addi t0, t0, 4      

loop:
    beqz t1, fin          

    lw t3, 0(t0)         
    bge t2, t3, saltar  

    mv t2, t3           
saltar:
    addi t0, t0, 4    
    addi t1, t1, -1      
    j loop              

fin:
    li a7, 10
    ecall