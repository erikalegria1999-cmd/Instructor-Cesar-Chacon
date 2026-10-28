Proceso Ejercicio3
	Definir ventas, total, i Como Real;
	Dimension ventas[11];
	
	total <- 0;
	
	Para i <- 1 Hasta 11 Hacer
		Escribir "Digite la venta ", i, ": ";
		Leer ventas[i];
		total <- total + ventas[i];
	FinPara
	
	Escribir "Total de ventas: ", total;
	Escribir "Promedio de ventas: ", total / 10;
FinProceso
