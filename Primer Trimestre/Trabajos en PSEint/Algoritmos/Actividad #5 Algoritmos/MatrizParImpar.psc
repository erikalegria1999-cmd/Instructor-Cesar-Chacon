Proceso MatrizParImpar
	
    // Variables
    Definir M, N, i, j Como Entero
    Definir matrizNumeros Como Entero
    Definir matrizPI Como Cadena
	
    // Matrices de tamaño fijo (100x100)
    Dimension matrizNumeros[100,100]
    Dimension matrizPI[100,100]
	
    // Leer dimensiones válidas
    Escribir "Ingrese número de filas (M): "
    Leer M
    Escribir "Ingrese número de columnas (N): "
    Leer N
	
    // Lectura de la matriz original (solo usamos MxN)
    Para i <- 1 Hasta M Hacer
        Para j <- 1 Hasta N Hacer
            Escribir "Número en [", i, ",", j, "]: "
            Leer matrizNumeros[i, j]
        FinPara
    FinPara
	
    // Crear matriz P / I
    Para i <- 1 Hasta M Hacer
        Para j <- 1 Hasta N Hacer
            Si matrizNumeros[i, j] % 2 = 0 Entonces
                matrizPI[i, j] <- "P"
            Sino
                matrizPI[i, j] <- "I"
            FinSi
        FinPara
    FinPara
	
    // Imprimir matriz original
    Escribir "MATRIZ ORIGINAL:"
    Para i <- 1 Hasta M Hacer
        Para j <- 1 Hasta N Hacer
            Escribir Sin Saltar matrizNumeros[i, j], " "
        FinPara
        Escribir ""
    FinPara
	
    // Imprimir matriz P/I
    Escribir " MATRIZ   P/I:"
    Para i <- 1 Hasta M Hacer
        Para j <- 1 Hasta N Hacer
            Escribir Sin Saltar matrizPI[i, j], " "
        FinPara
        Escribir ""
    FinPara
	
FinProceso
