Proceso SumarArreglos
	
    Definir A, B, C Como Entero
    Dimension A[5], B[5], C[5]
	
    Definir i Como Entero
	
    Escribir "LECTURA DEL ARREGLO A "
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite A[", i, "]: "
        Leer A[i]
    FinPara
	
    Escribir " LECTURA DEL ARREGLO B"
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite B[", i, "]: "
        Leer B[i]
    FinPara
	
    Para i <- 1 Hasta 5 Hacer
        C[i] <- A[i] + B[i]
    FinPara
	
    Escribir "ARREGLO A "
    Para i <- 1 Hasta 5 Hacer
        Escribir "A[", i, "] = ", A[i]
    FinPara
	
    Escribir "ARREGLO B"
    Para i <- 1 Hasta 5 Hacer
        Escribir "B[", i, "] = ", B[i]
    FinPara
	
    Escribir "ARREGLO C (SUMA)"
    Para i <- 1 Hasta 5 Hacer
        Escribir "C[", i, "] = ", C[i]
    FinPara
	
FinProceso
