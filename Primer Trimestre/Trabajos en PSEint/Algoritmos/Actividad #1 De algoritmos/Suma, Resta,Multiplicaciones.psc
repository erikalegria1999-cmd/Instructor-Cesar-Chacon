Proceso Suma_Resta_y_multiplicacion
	// Definir variables
    Definir num1, num2 Como Real;
    Definir opcion Como Entero;
	
    // Entradas
    Escribir "Ingrese el primer número:";
    Leer num1;
    Escribir "Ingrese el siguiente número:";
    Leer num2;
	
    // Menú de opciones
    Escribir "Elija una opción:";
    Escribir "1) Suma";
    Escribir "2) Resta";
    Escribir "3) Multiplicación";
    Leer opcion;
	
    // Procesos
    Si opcion = 1 Entonces
        Escribir "El resultado es: ", num1 + num2;
    Sino
        Si opcion = 2 Entonces
            Escribir "El resultado es: ", num1 - num2;
        Sino
            Si opcion = 3 Entonces
                Escribir "El resultado es: ", num1 * num2;
            FinSi
        FinSi
    FinSi

	
	
	FinProceso
