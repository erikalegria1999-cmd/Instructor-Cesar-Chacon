Proceso Ejercicio8
    Definir edad, i Como Entero
    Definir ninos, jovenes, adultos, ancianos Como Entero
	
    ninos <- 0
    jovenes <- 0
    adultos <- 0
    ancianos <- 0
	
    Para i <- 1 Hasta 10 Hacer
        Escribir "Ingrese la edad ", i, ": "
        Leer edad
		
        Si edad < 15 Entonces
            ninos <- ninos + 1
        SiNo
            Si edad < 18 Entonces
                jovenes <- jovenes + 1
            SiNo
                Si edad < 70 Entonces
                    adultos <- adultos + 1
                SiNo
                    ancianos <- ancianos + 1
                FinSi
            FinSi
        FinSi
    FinPara
	
    Escribir "Niños: ", ninos
    Escribir "Jóvenes: ", jovenes
    Escribir "Adultos: ", adultos
    Escribir "Ancianos: ", ancianos
FinProceso
