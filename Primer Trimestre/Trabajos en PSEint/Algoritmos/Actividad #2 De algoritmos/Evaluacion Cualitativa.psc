Proceso Evaluacion_Cualitativa
    Definir nota Como Real
    Escribir "Ingrese la nota del estudiante (0 a 10):"
    Leer nota
	
    Si nota >= 9.5 Entonces
        Escribir "Excelente"
    Sino
        Si nota >= 7 Entonces
            Escribir "Bueno"
        Sino
            Si nota >= 5 Entonces
                Escribir "Regular"
            Sino
                Escribir "Deficiente"
            FinSi
        FinSi
    FinSi
FinProceso
