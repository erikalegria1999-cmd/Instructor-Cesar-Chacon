Proceso GastosSemanales
	
    Definir gastos Como Real
    Dimension gastos[7]
	
    Definir i Como Entero
    Definir suma Como Real
	
    suma <- 0
	
    Para i <- 1 Hasta 7 Hacer
        Escribir " Digite el gasto del día ", i , ":"
        Leer gastos[i]
        suma <- suma + gastos[i]
    FinPara
	
    Escribir " Promedio semanal de gastos: ", suma / 7
	
FinProceso
