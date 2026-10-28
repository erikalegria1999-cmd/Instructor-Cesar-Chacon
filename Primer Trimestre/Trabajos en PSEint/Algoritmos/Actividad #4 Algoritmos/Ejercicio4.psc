Proceso Ejercicio4
    Definir notas Como Real;
    Dimension notas[5];
	
    Definir i Como Entero;
    Definir mayor, menor, promedio, suma Como Real;
	
    suma <- 0;
	
    Para i <- 1 Hasta 5 Hacer
        Escribir "Digite la nota ", i, " (1 a 5): ";
        Leer notas[i];
    FinPara
	
    mayor <- notas[1];
    menor <- notas[1];
	
    Para i <- 1 Hasta 5 Hacer
        suma <- suma + notas[i];
		
        Si notas[i] > mayor Entonces
            mayor <- notas[i];
        FinSi
		
        Si notas[i] < menor Entonces
            menor <- notas[i];
        FinSi
    FinPara
	
    promedio <- suma / 5;
	
    Escribir "Nota más alta: ", mayor;
    Escribir "Nota más baja: ", menor;
    Escribir "Promedio del grupo: ", promedio;
FinProceso
