Proceso Ejercicio2
	
	//definir variables
    Definir numero Como Entero
    Definir sumaPares, sumaImpares Como Entero
	
    sumaPares <- 0
    sumaImpares <- 0
	// datos de entrada 
    Escribir "Ingrese un número (0 para terminar): "
    Leer numero
	//procesos 
    Mientras numero <> 0 Hacer
        Si numero MOD 2 = 0 Entonces
            sumaPares <- sumaPares + numero
        SiNo
            sumaImpares <- sumaImpares + numero
        FinSi
		
        Escribir "Ingrese un número (0 para terminar): "
        Leer numero
    FinMientras
	
    Escribir "Suma de pares: ", sumaPares
    Escribir "Suma de impares: ", sumaImpares
FinProceso
