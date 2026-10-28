Proceso PaisesLetras
	
    Definir paises Como Cadena
    Definir letras Como Entero
	
    Dimension paises[5], letras[5]
	
    Definir i Como Entero
	
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite el nombre del país ", i , ":"
        Leer paises[i]
        letras[i] <- Longitud(paises[i])
    FinPara
	
    Escribir " PAISES LEIDOS "
    Para i <- 1 Hasta 5 Hacer
        Escribir paises[i]
    FinPara
	
    Escribir "CANTIDAD DE LETRAS "
    Para i <- 1 Hasta 5 Hacer
        Escribir letras[i]
    FinPara
FinProceso
