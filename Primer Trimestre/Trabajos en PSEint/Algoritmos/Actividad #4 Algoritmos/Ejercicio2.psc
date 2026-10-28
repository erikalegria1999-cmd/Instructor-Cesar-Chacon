Proceso Ejercicio2
	
	
	// definir variables 
	Definir ciudades Como Cadena;
	Dimension ciudades[9];
	Definir i Como Entero;
	//procesos  
	Para i <- 1 Hasta 8 Hacer
		Escribir "Digite la ciudad ", i, ": ";
		Leer ciudades[i];
	FinPara
	
	Escribir "Ciudades en orden inverso:";
	
	Para i <- 8 Hasta 1 Con Paso -1 Hacer
		Escribir ciudades[i];
	FinPara
FinProceso
