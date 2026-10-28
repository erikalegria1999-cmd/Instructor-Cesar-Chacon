Proceso Ejercicio5
    Definir n, i Como Entero
    Definir peso, altura, huevos Como Real
    Definir calidad, sumaCalidad, promedioCalidad Como Real
    Definir precio Como Real
	
    sumaCalidad <- 0
	
    Escribir "Ingrese la cantidad de gallinas: "
    Leer n
	
    Para i <- 1 Hasta n Hacer
        Escribir "Peso de la gallina ", i, ": "
        Leer peso
        Escribir "Altura de la gallina ", i, ": "
        Leer altura
        Escribir "Número de huevos que pone la gallina ", i, ": "
        Leer huevos
		
		
        calidad <- (peso * altura) / huevos
        sumaCalidad <- sumaCalidad + calidad
    FinPara
	
    promedioCalidad <- sumaCalidad / n
	
    Si promedioCalidad >= 15 Entonces
        precio <- 1.2 * promedioCalidad
    SiNo
        Si promedioCalidad > 8 Entonces
            precio <- 1.0 * promedioCalidad
        SiNo
            precio <- 0.80 * promedioCalidad
        FinSi
    FinSi
	
    Escribir "Precio sugerido por kilo de huevos: ", precio
FinProceso
