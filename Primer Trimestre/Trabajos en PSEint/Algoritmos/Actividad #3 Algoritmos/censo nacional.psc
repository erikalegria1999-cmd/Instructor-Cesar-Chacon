Proceso Ejercicio6
    Definir opcion, total Como Entero
    Definir primaria, secundaria, tecnica, profesional, posgrado Como Entero
	definir i Como Entero
    primaria <- 0
    secundaria <- 0
    tecnica <- 0
    profesional <- 0
    posgrado <- 0
	
    Escribir "Cantidad de personas a encuestar: "
    Leer total
	
    Para i <- 1 Hasta total Hacer
        Escribir "Nivel educativo:"
        Escribir "1. Primaria"
        Escribir "2. Secundaria"
        Escribir "3. Técnica"
        Escribir "4. Profesional"
        Escribir "5. Posgrado"
        Leer opcion
		
        Segun opcion Hacer
            1: primaria <- primaria + 1
            2: secundaria <- secundaria + 1
            3: tecnica <- tecnica + 1
            4: profesional <- profesional + 1
            5: posgrado <- posgrado + 1
        FinSegun
    FinPara
	
    Escribir "Porcentaje primaria: ", (primaria * 100 / total), "%"
    Escribir "Porcentaje secundaria: ", (secundaria * 100 / total), "%"
    Escribir "Porcentaje técnica: ", (tecnica * 100 / total), "%"
    Escribir "Porcentaje profesional: ", (profesional * 100 / total), "%"
    Escribir "Porcentaje posgrado: ", (posgrado * 100 / total), "%"
FinProceso
