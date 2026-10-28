Algoritmo Promedio_5_notas_Matriz
	
	dimension notas[5]
	//definir variables
	definir notas,suma, promedio,notaMayor,NotaMenor Como real
	Definir i como entero
	//datos de entrada
	para i = 0 hasta 4 Hacer
		escribir "Ingrese  la nota del aprendiz (1 a 5):"
		leer notas[i]
	FinPara
	//calcula de datos 
	suma <-0
	notaMayor = notas[0]
	NotaMenor = notas[0]
		//procesos
	para i = 0 hasta 4 Hacer
		suma <- suma + notas[i]
		
		si notas[i] > notaMayor Entonces
			notaMayor = notas[i]
		FinSi
		
		
		si notas[i] < NotaMenor Entonces
			NotaMenor = notas[i]
		FinSi
	FinPara
	
	promedio = suma / 5 
	
	
	//datos de salida 
	
	
	escribir " Nota Mas  baja: " NotaMenor
	escribir "Nota Mas Alta: " notaMayor
	escribir " promedio del grupo: " promedio
	
	
FinAlgoritmo
