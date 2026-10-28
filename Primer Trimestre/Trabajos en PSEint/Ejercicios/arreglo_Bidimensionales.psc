Algoritmo arreglo_Bidimensionales
	Dimension matriz[3,3]
	//definir variables 
	definir matriz, fila,columna   Como Entero
	
	//procesos
	para fila = 0 hasta 2 Hacer
		para columna = 0 hasta 2 Hacer
			matriz[fila,columna] = Aleatorio(50,80)
		FinPara
	FinPara
	//salida
	para fila = 0 hasta 2 Hacer
		para columna = 0 hasta 2 Hacer
			escribir matriz[fila,columna], "," Sin Saltar
		FinPara
		escribir""
	FinPara
	
FinAlgoritmo
