Algoritmo Diagonal_matriz_uno
	
	
	Dimension matriz[3,3]
	//definir variables
	Definir matriz, fila, columna Como Entero
	
	//procesos	
	Para fila = 0 Hasta 2 Hacer
		Para columna = 0 Hasta 2 Hacer
			Si fila = columna Entonces
				matriz[fila,columna]=1
			SiNo
				matriz[fila,columna]=0
			FinSi
		FinPara
	FinPara
	//datos de  salida 
	Para fila = 0 Hasta 2 Hacer
		Para columna = 0 Hasta 2 Hacer
			Escribir matriz[fila,columna], "    " Sin Saltar
		FinPara
	    Escribir ""
    FinPara
	
FinAlgoritmo