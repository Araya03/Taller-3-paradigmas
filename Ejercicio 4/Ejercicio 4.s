.data
N: .word 10 #Valor de N almacenado en memoria (ej. N = 10)
result: .word 0 #Espacio para almacenar el resultado final

.text

.global _start
_start:
	
		#Cargar N desde la memoria en el registro t1
        la t0, N
        lw t1, 0(t0) #t1 = N
        
        #Inicializar variables del bucle
        li t2, 0 #t2(i) = 0 (contador)
        li t3, 0 #t3(suma) = 0 (acumulador)

.while:
        #Condición: while (i < N) -> si i >= N, salir del bucle
        bge t2, t1, .fin
        
        addi t2, t2, 1 #i = i + 1
        add t3, t3, t2 #suma = suma + i
        j .while #Volver al inicio del bucle

.fin:
        #Guardar el resultado en la variable 'result' en memoria
        la t0, result
        sw t3, 0(t0)