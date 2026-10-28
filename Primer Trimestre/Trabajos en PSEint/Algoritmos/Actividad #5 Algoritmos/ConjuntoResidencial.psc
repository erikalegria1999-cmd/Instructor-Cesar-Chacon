Proceso ConjuntoResidencial
	
    Dimension A[3, 5, 4]
    Definir i, j, k,a, opcion, total, torre, piso, apto Como Entero
	
    // Inicializar con 0 habitantes
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 5 Hacer
            Para k <- 1 Hasta 4 Hacer
                A[i, j, k] = 0
            FinPara
        FinPara
    FinPara
	
    Repetir
		
        Escribir ""
        Escribir "      MENU CONJUNTO RESIDENCIAL    "
        Escribir "1. Agregar habitantes a cada apartamento"
        Escribir "2. Consultar habitantes por apartamento"
        Escribir "3. Total de habitantes del conjunto"
        Escribir "4. Promedio de habitantes por piso"
        Escribir "5. Promedio de habitantes por torre"
        Escribir "6. Salir"
        Escribir "Ingrese opcion: "
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Para i <- 1 Hasta 3 Hacer
                    Para j <- 1 Hasta 5 Hacer
                        Para k <- 1 Hasta 4 Hacer
                            Escribir "Habitantes Torre ", i, ", Piso ", j, ", Apto ", k, ": "
                            Leer A[i, j, k]
                        FinPara
                    FinPara
                FinPara
				
            2:
                Escribir "Ingrese torre (1 a 3): "
                Leer torre
                Escribir "Ingrese piso (1 a 5): "
                Leer piso
                Escribir "Ingrese apartamento (1 a 4): "
                Leer apto
				
                Escribir "Habitantes: ", A[torre, piso, apto]
				
            3:
                total = 0
                Para i <- 1 Hasta 3 Hacer
                    Para j <- 1 Hasta 5 Hacer
                        Para k <- 1 Hasta 4 Hacer
                            total = total + A[i, j, k]
                        FinPara
                    FinPara
                FinPara
                Escribir "Total de habitantes: ", total
				
            4:
                Para i <- 1 Hasta 3 Hacer
                    Para j <- 1 Hasta 5 Hacer
                        total = 0
                        Para k <- 1 Hasta 4 Hacer
                            total = total + A[i, j, k]
                        FinPara
                        Escribir "Promedio Torre ", i, ", Piso ", j, ": ", total / 4
                    FinPara
                FinPara
				
            5:
                Para i <- 1 Hasta 3 Hacer
                    total = 0
                    Para j <- 1 Hasta 5 Hacer
                        Para k <- 1 Hasta 4 Hacer
                            total = total + A[i, j, k]
                        FinPara
                    FinPara
                    Escribir "Promedio de Torre ", i, ": ", total / 20
                FinPara
				
            6:
                Escribir "Saliendo..."
				
            De Otro Modo:
                Escribir "Opcion invalida"
				
        FinSegun
		
    Hasta Que opcion = 6
	
FinProceso
