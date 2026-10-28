Algoritmo divisoresExactos
	
	//definir variables
	definir n,i Como Entero
	
	//Datos de entrada
	Escribir "ingrese un numero entero:"
	leer n 
	
	para i <- 1 Hasta  n con paso 1 
		si n % i =0 Entonces
			Escribir  ""
			Escribir "es divisor exacto de " i 
			esperar 1 Segundos
		FinSi
	FinPara
	
FinAlgoritmo
