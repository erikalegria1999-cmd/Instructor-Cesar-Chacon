Proceso TerminadosEn4
	
	
	//definir variables
    Definir a, b, i Como Entero
	
	
	//datos de entrada
    Escribir "Ingrese el primer número:"
    Leer a
    Escribir "Ingrese el segundo número:"
    Leer b
	
	
	
	//procesos
    Si a < b Entonces
        Para i <- a Hasta b Con Paso 1
            Si i % 10 = 4 Entonces
                Escribir i
            FinSi
        FinPara
    Sino
        Para i <- b Hasta a Con Paso 1
            Si i % 10 = 4 Entonces
                Escribir i
            FinSi
        FinPara
    FinSi
	
FinProceso
