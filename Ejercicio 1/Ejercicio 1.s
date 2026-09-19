.global _start
_start:
	
addi s1, zero, 10 #a=10
addi s2, zero, 7 #b=7
addi s3, zero, 3 #c=3

add t0, s1, s2 #a+b

slli t1, s3, 1 #c*2

sub t2, t0, t1 #Le resta el resultado de c*2 a el resultado de a+b