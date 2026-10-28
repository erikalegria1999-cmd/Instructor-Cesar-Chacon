Proceso CitasMedicas
	
    Dimension Citas[8, 2]
    Definir i, opcion,citas, doc, horaBuscada, encontrado, idx Como Entero
    
    
    Para i <- 1 Hasta 8 Hacer
        Citas[i, 1] = 0
        Citas[i, 2] = i
    FinPara
	
    Repetir

        Escribir " MENU CITAS"
        Escribir "1. Asignar cita"
        Escribir "2. Ver todas las citas"
        Escribir "3. Buscar cita por documento"
        Escribir "4. Buscar cita por hora"
        Escribir "5. Salir"
        Escribir "Ingrese opcion: "
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                // Buscar primera posición libre usando Mientras
                encontrado = 0
                idx = 1
                Mientras idx <= 8 Y encontrado = 0 Hacer
                    Si Citas[idx, 1] = 0 Entonces
                        encontrado = idx
                    FinSi
                    idx = idx + 1
                FinMientras
				
                Si encontrado = 0 Entonces
                    Escribir "No hay citas disponibles."
                Sino
                    Escribir "Ingrese documento del paciente: "
                    Leer doc
                    Citas[encontrado, 1] = doc
                    Escribir "Cita asignada en la hora ", encontrado
                FinSi
				
            2:
                Para i <- 1 Hasta 8 Hacer
                    Escribir "Hora ", Citas[i, 2], " - Documento: ", Citas[i, 1]
                FinPara
				
            3:
                Escribir "Ingrese documento a buscar: "
                Leer doc
				
                encontrado = 0
                Para i <- 1 Hasta 8 Hacer
                    Si Citas[i, 1] = doc Entonces
                        encontrado = i
                    FinSi
                FinPara
				
                Si encontrado = 0 Entonces
                    Escribir "Documento no encontrado."
                Sino
                    Escribir "El paciente tiene cita en la hora ", encontrado
                FinSi
				
            4:
                Escribir "Ingrese la hora a buscar (1 a 8): "
                Leer horaBuscada
				
                Si horaBuscada < 1 O horaBuscada > 8 Entonces
                    Escribir "Hora invalida."
                Sino
                    Escribir "Documento asignado: ", Citas[horaBuscada, 1]
                FinSi
				
            5:
                Escribir "Saliendo..."
				
            De Otro Modo:
                Escribir "Opcion invalida"
				
        FinSegun
		
    Hasta Que opcion = 5
	
FinProceso
