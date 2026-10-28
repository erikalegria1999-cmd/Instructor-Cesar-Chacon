Algoritmo Numeros_entreDos
	//definir variables
	definir a,b , i Como Entero
	
	
	//Datos de entrada
	escribir "ingrese el primer numero:"
	leer a
	escribir "ingrese el segundo numero:"
	leer b
	
	
	//procesos
	si a < b Entonces
		para i <- a Hasta  b con paso 1 
			Escribir i
			Esperar  1 Segundos
		FinPara
		
	sino 
		para i <- b hasta a con paso 1
			Escribir i   
			 esperar 1 segundo
		FinPara
	FinSi
	
	
FinAlgoritmo
