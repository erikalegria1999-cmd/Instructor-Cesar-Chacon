Proceso Buscar_Digito_1
	
    // Definir variables
    Definir n, c, d, u Como Entero
	
    // Datos de entrada
    Escribir "Ingrese un número de 3 dígitos:"
    Leer n
	
    // Conversión
    c <- Trunc(n / 100)                     // Centenas
    d <- Trunc((n % 100) / 10)              // Decenas
    u <- n % 10                              // Unidades
	
    // Proceso
    Si c = 1 O d = 1 O u = 1 Entonces
        Escribir "El número contiene el dígito 1."
    Sino
        Escribir "El número NO contiene el dígito 1."
    FinSi
	
FinProceso

