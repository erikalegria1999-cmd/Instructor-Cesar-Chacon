Algoritmo  Ejercicio1
	Definir numer Como Entero;
	Dimension numer[11];
	
	Definir i Como Entero;
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir "Digite el número ", i, ": ";
		Leer numer[i];
	FinPara
	
	Escribir "Números pares:";
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Si numer[i] Mod 2 = 0 Entonces
			Escribir numer[i];
		FinSi
	FinPara
FinAlgoritmo

