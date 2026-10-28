Algoritmo fibonacci_serie
	definir penultimo, ultimo, nuevo como enteros 
	penultimo=0
	ultimo = 1
	Escribir "serie de fibonacci"
	Escribir  penultimo " , " Sin Saltar
	escribir ultimo " , " Sin Saltar 
	
	Repetir
		nuevo = penultimo + ultimo
		penultimo = ultimo
		ultimo= nuevo
		Escribir  nuevo " , " Sin Saltar
	Hasta Que nuevo>=10000
	Escribir ","
	
	
FinAlgoritmo
