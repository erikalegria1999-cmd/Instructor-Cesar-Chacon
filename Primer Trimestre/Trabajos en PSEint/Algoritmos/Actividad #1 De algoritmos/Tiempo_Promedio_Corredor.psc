Algoritmo  Tiempo_Promedio_Corredor
    // Definir variables
    Definir tiempoLunes, tiempoMiercoles, tiempoViernes, promedio Como Real;
	
    // Entradas
    Escribir "Ingrese el tiempo del lunes (en minutos):";
    Leer tiempoLunes;
    Escribir "Ingrese el tiempo del miércoles (en minutos):";
    Leer tiempoMiercoles;
    Escribir "Ingrese el tiempo del viernes (en minutos):";
    Leer tiempoViernes;
	
    // Proceso
    promedio <- (tiempoLunes + tiempoMiercoles + tiempoViernes) / 3;
	
    // Salida
    Escribir "El tiempo promedio en recorrer la ruta es: ", promedio, " minutos.";
FinProceso