Proceso Ejercicio7
    Definir n, contador, numero, mayor Como Entero
	
    mayor <- -999999
    contador <- 1
	
    Escribir "Ingrese la cantidad de números: "
    Leer n
	
    Mientras contador <= n Hacer
        Escribir "Número ", contador, ": "
        Leer numero
		
        Si numero > mayor Entonces
            mayor <- numero
        FinSi
		
        contador <- contador + 1
    FinMientras
	
    Escribir "El mayor valor es: ", mayor
FinProceso
