Algoritmo CensoEstudios2025
	
    Definir primaria, secundaria, tecnica, profesional, posgrado, total Como Entero
    Definir opcion Como Entero
    Definir porcentaje Como Real
	
    primaria <- 0
    secundaria <- 0
    tecnica <- 0
    profesional <- 0
    posgrado <- 0
	
    Repetir
        Limpiar Pantalla
        Escribir "CENSO DE ESTUDIOS 2025"
        Escribir ""
        Escribir "1. Primaria"
        Escribir "2. Secundaria"
        Escribir "3. Técnica"
        Escribir "4. Profesional"
        Escribir "5. Posgrado"
        Escribir "6. Terminar y mostrar resultados"
        Escribir ""
        Escribir "Ingrese opción:"
        Leer opcion
		
        Segun opcion Hacer
            1: primaria <- primaria + 1
            2: secundaria <- secundaria + 1
            3: tecnica <- tecnica + 1
            4: profesional <- profesional + 1
            5: posgrado <- posgrado + 1
            6: Escribir "Mostrando resultados..."
            De Otro Modo:
                Escribir "Opción inválida, intente nuevamente."
        FinSegun
		
    Hasta Que opcion = 6
	
    total <- primaria + secundaria + tecnica + profesional + posgrado
	
    Si total = 0 Entonces
        Escribir "No se registraron datos."
    SiNo
		
        porcentaje <- (primaria / total) * 100
        Escribir "Primaria: ", porcentaje, "%"
		
        porcentaje <- (secundaria / total) * 100
        Escribir "Secundaria: ", porcentaje, "%"
		
        porcentaje <- (tecnica / total) * 100
        Escribir "Técnica: ", porcentaje, "%"
		
        porcentaje <- (profesional / total) * 100
        Escribir "Profesional: ", porcentaje, "%"
		
        porcentaje <- (posgrado / total) * 100
        Escribir "Posgrado: ", porcentaje, "%"
        
    FinSi
	
FinAlgoritmo
