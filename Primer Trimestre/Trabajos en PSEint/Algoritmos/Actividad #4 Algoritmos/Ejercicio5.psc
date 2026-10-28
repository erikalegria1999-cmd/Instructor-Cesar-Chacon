Proceso Ejercicio5
    Definir valores Como Entero;
    Dimension valores[12];
	
    Definir i, contador Como Entero;
	
    contador <- 0;
	
    Para i <- 1 Hasta 12 Hacer
        Escribir "Digite el valor ", i, ": ";
        Leer valores[i];
		
        Si valores[i] > 100 Entonces
            contador <- contador + 1;
        FinSi
    FinPara
	
    Escribir "Cantidad de valores mayores a 100: ", contador;
FinProceso
