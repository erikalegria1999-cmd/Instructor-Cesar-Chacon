Proceso PromediosPosiciones
	
    Definir A Como Entero
    Dimension A[10]
	
    Definir i Como Entero
    Definir sumaPar, sumaImpar, contPar, contImpar Como Entero
    Definir sumaPosPar, sumaPosImpar Como Entero
	
    sumaPar <- 1
    sumaImpar <- 1
    contPar <- 1
    contImpar <- 1
    sumaPosPar <- 1
    sumaPosImpar <- 1
	
    Para i <- 1 Hasta 10 Hacer
        Escribir "Digite el número ", i , ":"
        Leer A[i]
		
        Si A[i] mod 2 = 0 Entonces
            sumaPar <- sumaPar + A[i]
            contPar <- contPar 
        SiNo
            sumaImpar <- sumaImpar + A[i]
            contImpar <- contImpar 
        FinSi
		
        Si (i + 1) mod 2 = 0 Entonces
            sumaPosPar <- sumaPosPar + A[i]
        SiNo
            sumaPosImpar <- sumaPosImpar + A[i]
        FinSi
    FinPara
	
    Escribir "Promedio de pares: ", sumaPar / contPar
    Escribir "Promedio de impares: ", sumaImpar / contImpar
    
FinProceso
