Proceso Incentivo_Produccion
    Definir nombre Como Cadena
    Definir lunes, martes, miercoles, jueves, viernes, sabado, promedio Como Real
	
    Escribir "Ingrese el nombre del operario:"
    Leer nombre
	
    Escribir "Ingrese la producción (unidades) del lunes al sábado:"
    Leer lunes, martes, miercoles, jueves, viernes, sabado
	
    promedio <- (lunes + martes + miercoles + jueves + viernes + sabado) / 6
	
    Si promedio >= 100 Entonces
        Escribir "El operario ", nombre, " tuvo un promedio de ", promedio, " unidades y tiene derecho a incentivos."
    Sino
        Escribir "El operario ", nombre, " tuvo un promedio de ", promedio, " unidades y no tiene derecho a incentivos."
    FinSi
FinProceso
