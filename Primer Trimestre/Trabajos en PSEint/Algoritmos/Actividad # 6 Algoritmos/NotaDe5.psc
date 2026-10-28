Algoritmo NotaDe5
	
    Dimension estudiantes[5]
    Dimension notas[5,3]
	// DEFINIR VARIABLES
	
    Definir i, j Como Entero
	definir estudiantes Como Caracter
    Definir suma,notas, promedio Como Real
	
    // INGRESO DE DATOS
	
    Para i <- 1 Hasta 5 Hacer
        
        Escribir "Ingrese el nombre del estudiante ", i , ":"
        Leer estudiantes[i]
		
        Para j <- 1 Hasta 3 Hacer
			
            Escribir "Ingrese la nota ", j , ":"
			
            Leer notas[i,j]
			
        FinPara
		
    FinPara
	
    // PROCESO Y SALIDA
	
    Para i <- 1 Hasta 5 Hacer
        
        suma <- 0
        
        // Suma de las 3 notas
        Para j <- 1 Hasta 3 Hacer
			
            suma <- suma + notas[i,j]
			
        FinPara
		
        promedio <- suma / 3
		
        Escribir "Estudiante: ", estudiantes[i]
        Escribir "Promedio: ", promedio
		
        Si promedio >= 3.0 Entonces
            Escribir "Estado: APROBADO"
        SiNo
            Escribir "Estado: NO APROBADO"
        FinSi
		
    FinPara
	
FinAlgoritmo


