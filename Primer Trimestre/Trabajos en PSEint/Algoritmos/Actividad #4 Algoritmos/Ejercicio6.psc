Proceso Ejercicio6
    Definir datos Como Cadena;
    Dimension datos[6,3];
	
    Definir i Como Entero;
    Definir mayorEdad Como Entero;
    Definir nombreMayor Como Cadena;
	
    Para i <- 1 Hasta 5 Hacer
        Escribir "Nombre de la persona ", i, ": ";
        Leer datos[i,1];
		
        Escribir "Edad de ", datos[i,1], ": ";
        Leer datos[i,2];     // Se guarda como texto pero se convierte luego
    FinPara
	
    mayorEdad <- ConvertirANumero(datos[1,2]);
    nombreMayor <- datos[1,1];
	
    Para i <- 2 Hasta 5 Hacer
        Si ConvertirANumero(datos[i,2]) > mayorEdad Entonces
            mayorEdad <- ConvertirANumero(datos[i,2]);
            nombreMayor <- datos[i,1];
        FinSi
    FinPara
	
    Escribir "La persona de mayor edad es: ", nombreMayor, " con ", mayorEdad, " años.";
FinProceso
