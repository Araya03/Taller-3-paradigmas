.global _start
_start:
	
.global _start
_start:
	
addi t0, zero, 5 #Valor de N
sw t0, 0(zero) #Cargo N en memoria

lw t0, 0(zero) #Cargo N desde la memoria

addi t1, zero, 0 #Suma
addi t2, zero, 1 #i

analiza:

#Si i <= N sigue en el while
ble t2, t0, continua_while

#Si i > N sale del while
bgt t2, t0, fin_while


continua_while:
add t1, t1, t2
addi t2, t2, 1
j analiza

fin_while:
sw t1, 4(zero)