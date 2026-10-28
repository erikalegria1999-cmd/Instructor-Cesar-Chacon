Proceso Ejercicio10
    Definir i Como Entero
    Definir x Como Real
    Definir y Como Real
    Definir z Como Real
    Definir mejorZ Como Real
    Definir mejorX Como Real
    Definir mejorY Como Real
	
    mejorZ <- -999999
	
    Para i <- 1 Hasta 100 Hacer
        x <- Aleatorio(-5, 5)
        y <- Aleatorio(-5, 5)
		
        z <- (x * x) + (y * y)
		
        Si z > mejorZ Entonces
            mejorZ <- z
            mejorX <- x
            mejorY <- y
        FinSi
    FinPara
	
    Escribir "Mejor valor de Z: ", mejorZ
    Escribir "Valor de X: ", mejorX
    Escribir "Valor de Y: ", mejorY
FinProceso

