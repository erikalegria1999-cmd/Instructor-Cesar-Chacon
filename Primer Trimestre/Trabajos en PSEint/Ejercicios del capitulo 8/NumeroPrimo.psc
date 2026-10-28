Algoritmo NumeroPrimo
	// Definir variables
	Definir n, i Como Entero
	Definir esPrimo Como Logico
	
	Escribir "Ingrese un número:"
	Leer n
	
	Si n <= 1 Entonces
		Escribir "No es primo."

 FinSi

esPrimo <- Verdadero

Para i <- 2 Hasta n - 1 Con Paso 1
	Si n % i = 0 Entonces
		esPrimo <- Falso
	FinSi
FinPara

Si esPrimo Entonces
	Escribir "El número es primo."
SiNo
	Escribir "El número NO es primo."
FinSi
FinAlgoritmo
