Algoritmo Rango_Entre_Digitos
	
	//definir variables
	definir N, D1,D2,i Como Entero
	
	
	
	
	//DATOS DE ENTRADA
	Escribir "Ingrese un numero de dos digitos:"
	leer N
	
	
	
	//conversion
	D1 <-  trunc (N /10)         //perimer digito 
	D2 <-   N % 10               // Segundo digito
	
	si D1 <  D2  entonces 
		para i <- D1 hasta D2 con paso 1 
			escribir i 
		FinPara
	sino 
		para i <- D2 Hasta D1 Con Paso 1
			Escribir i
		FinPara
	FinSi
	
FinAlgoritmo
