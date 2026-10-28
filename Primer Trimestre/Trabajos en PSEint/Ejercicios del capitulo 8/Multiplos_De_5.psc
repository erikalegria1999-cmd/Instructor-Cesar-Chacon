Algoritmo  Multiplos_De_5
	//Definir variables
    Definir n, i Como Entero
	//datos de entrada
    Escribir "Ingrese un número:"
    Leer n
	
	
	//DAtos de salida 
    Escribir "Múltiplos de 5 entre 1 y ", n, ":"
	
	// Proceso 
    Para i <- 1 Hasta n Con Paso 1
        Si i % 5 = 0 Entonces
            Escribir i
        FinSi
    FinPara
	
FinAlgoritmo

