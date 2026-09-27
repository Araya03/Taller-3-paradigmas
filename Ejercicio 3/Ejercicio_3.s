.global _start
_start:
	
	addi t0, zero, 10 #t0 = 10
    sw t0, 0(zero) #guarda 'a' en la dirección 0
	
	addi t1, zero, 25 #t1 = 25
    sw t1, 4(zero) #guarda 'b' en la dirección 4
	
	lw t0, 0(zero) #carga el valor 'a' (dirección 0) en t0
    lw t1, 4(zero)  #carga el valor 'b' (dirección 4) en t1
	
	sub t2, t0, t1 #t2 = a - b
	
	bge t2, zero, guardar #si t2 >= 0, ya es positivo y saltamos a guardar
	
	sub t2, zero, t2 #si no salta es negativo, le restamos 0 para volverlo positivo
	
guardar:
    sw t2, 8(zero) #guarda el resultado final en la dirección 8