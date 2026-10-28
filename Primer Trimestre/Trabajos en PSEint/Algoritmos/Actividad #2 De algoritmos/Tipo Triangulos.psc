Proceso Tipo_Triangulo
    Definir a, b, c Como Real
    Escribir "Ingrese los tres lados del triángulo:"
    Leer a, b, c
	
    Si (a + b > c) Y (a + c > b) Y (b + c > a) Entonces
        Si a = b Y b = c Entonces
            Escribir "Triángulo equilátero"
        Sino
            Si a = b O a = c O b = c Entonces
                Escribir "Triángulo isósceles"
            Sino
                Escribir "Triángulo escaleno"
            FinSi
        FinSi
    Sino
        Escribir "Los lados no forman un triángulo válido."
    FinSi
FinProceso
