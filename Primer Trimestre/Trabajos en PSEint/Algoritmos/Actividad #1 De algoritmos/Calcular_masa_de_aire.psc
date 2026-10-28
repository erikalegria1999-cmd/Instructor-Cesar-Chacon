Proceso Calcular_masa_de_aire
    // Definir variables
    Definir presion, volumen, temperatura, masa Como Real;
	
    // Entrada de datos
    Escribir "Ingrese la presión del aire:";
    Leer presion;
    Escribir "Ingrese el volumen del aire:";
    Leer volumen;
    Escribir "Ingrese la temperatura del aire:";
    Leer temperatura;
	
    // Proceso (aplicando la fórmula)
    masa <- (presion * volumen) / (0.37 * (temperatura + 460));
	
    // Salida
    Escribir "La masa de aire es: ",masa;
FinProceso