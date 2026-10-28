Algoritmo PromedioMultiplosDe3
	
	definir n, i ,  suma , promedio Como Entero
	Escribir "Ingrese el valor de n:"
	Leer n
	
	suma <- 0
	
	Para i <- 1 Hasta n Con Paso 1
		suma <- suma + (3 * i)
	FinPara
	
	promedio <- suma / n
	
	Escribir "El promedio entero es: ", Trunc(promedio)
FinAlgoritmo
