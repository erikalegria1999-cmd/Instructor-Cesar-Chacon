Algoritmo CompararPromedios
	// Definición de variables
	Definir x , t , i Como Entero
	Definir suma2, suma5 Como Entero
	Definir prom2, prom5 Como Real
	
	Escribir "Ingrese el valor de x (multiplos de 2):"
	Leer x
	Escribir "Ingrese el valor de y (multiplos de 5):"
	Leer t
	
	suma2 <- 0
	suma5 <- 0
	
	// Sumar múltiplos de 2
	Para i <- 1 Hasta x Con Paso 1
		suma2 <- suma2 + (2 * i)
	FinPara
	
	// Sumar múltiplos de 5
	Para i <- 1 Hasta t Con Paso 1
		suma5 <- suma5 + (5 * i)
	FinPara
	
	prom2 <- suma2 / x
	prom5 <- suma5 / t
	
	Si prom2 > prom5 Entonces
		Escribir "El promedio de los múltiplos de 2 es mayor."
	SiNo
		Escribir "El promedio de los múltiplos de 2 NO es mayor."
	FinSi
FinAlgoritmo
