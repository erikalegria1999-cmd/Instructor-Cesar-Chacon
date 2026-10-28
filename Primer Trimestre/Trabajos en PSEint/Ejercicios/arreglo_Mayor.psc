Algoritmo arreglo_Mayor
	Dimensionar arreglo(5)
	// definir variables
	Definir arreglo, mayor, i Como Entero
	// procesos
	Para i<-0 Hasta 4 Hacer
		arreglo[i] <- Aleatorio(11,50)
		Escribir arreglo[i] ", "Sin Saltar
	FinPara
	
	mayor <- arreglo[0]
	
	Para i<-1 Hasta 4 Hacer
		Si arreglo[i]>mayor Entonces
			mayor <- arreglo[i]
		FinSi
	FinPara
	// datos de salida
	Escribir 'el mayor valor de el arreglo es :', mayor
FinAlgoritmo
