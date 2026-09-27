.global _start
_start:
	
	addi t0, zero, 10 #carga 10 en t0, t0 = 10
    sw t0, 0(zero) #guarda 10 en la dirección 0
    
    addi t0, zero, 20 #carga 20 en t0, t0 = 20
    sw t0, 4(zero) #guarda 20 en la dirección 4

    lw t0, 0(zero) #agarra lo de dirección 0 y carga en t0, t0 = 20 => t0 = 10
    sw t0, 8(zero) #guarda 10 en dirección 8

    lw t0, 4(zero) #agarra lo de dirección 4 y carga en t0, t0 = 10 => t0 = 20
    sw t0, 0(zero) #guarda 20 en dirección 0

    lw t0, 8(zero) #agarra lo de dirección 8 y carga en t0, t0 = 20 => t0 = 10
    sw t0, 4(zero) #guarda 10 en dirección 4