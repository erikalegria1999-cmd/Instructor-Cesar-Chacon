Proceso SumaDiagonal
	
    Definir N, i, j Como Entero
    Definir M Como Entero
	
    Escribir "Digite el tamaño N de la matriz NxN:"
    Leer N
	
    Dimension M[N, N]
	
    Definir suma Como Entero
    suma <- 0
	
    Para i <- 1 Hasta N-1 Hacer
        Para j <- 1 Hasta N-1 Hacer
            Escribir "Digite el valor en [", i+1, ",", j+1, "]:"   // Mostrar como 1..N
            Leer M[i, j]
        FinPara
    FinPara
	
    Para i <- 1 Hasta N-1 Hacer
        suma <- suma + M[i, i]
    FinPara
	
    Escribir "Suma de la diagonal principal: ", suma
	
FinProceso
