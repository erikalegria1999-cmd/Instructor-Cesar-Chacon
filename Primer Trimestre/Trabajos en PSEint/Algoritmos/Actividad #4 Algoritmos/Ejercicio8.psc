Algoritmo  Ejercicio8
	Dimensionar datos[7,2] 
	definir datos como caracter
	Definir i Como Entero
	Definir totalVentas, promedio, menorVenta Como Real
	Definir diaMenorVenta Como Cadena
	
	// Cargar los días de la semana
	datos[1,1] <- "Lunes"
	datos[2,1] <- "Martes"
	datos[3,1] <- "Miércoles"
	datos[4,1] <- "Jueves"
	datos[5,1] <- "Viernes"
	datos[6,1] <- "Sábado"
	datos[7,1] <- "Domingo"
	
	totalVentas <- 0
	menorVenta <- 999999
	
	Para i <- 1 Hasta 7 Hacer
		Escribir "Ingrese ventas del día ", datos[i,1], ": "
		Leer datos[i,2]
		
		totalVentas <- totalVentas + ConvertirANumero(datos[i,2])
		
		Si ConvertirANumero(datos[i,2]) < menorVenta Entonces
			menorVenta <- ConvertirANumero(datos[i,2])
			diaMenorVenta <- datos[i,1]
		FinSi
	FinPara
	
	promedio <- totalVentas / 7
	
	Escribir "Total de ventas: ", totalVentas
	Escribir "Promedio de ventas: ", promedio
	Escribir "Día con menor venta: ", diaMenorVenta, " (", menorVenta, ")"
FinAlgoritmo

