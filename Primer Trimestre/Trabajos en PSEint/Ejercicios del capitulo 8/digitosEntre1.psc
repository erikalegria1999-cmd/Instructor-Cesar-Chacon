Algoritmo digitosEntre1
	
    // definir variables 
    Definir n, c, d, u, i Como Entero
	
    // datos de entrada
    Escribir "Ingrese un número entero de 3 dígitos:"
    Leer n 
	
    // convertidor 
      c <- Trunc(n / 100)
	    d <- Trunc( (n % 100) / 10 )
	    u <- n % 10

	
    // procesos
    Escribir "Números entre 1 y ", c, ":"
    Para i <- 1 Hasta c Con Paso 1
        Escribir i
    FinPara
	
    Escribir "Números entre 1 y ", d, ":"
    Para i <- 1 Hasta d Con Paso 1
        Escribir i
    FinPara
	
    Escribir "Números entre 1 y ", u, ":"
    Para i <- 1 Hasta u Con Paso 1
        Escribir i
    FinPara
	
FinAlgoritmo

