Proceso Mayor_y_Menor
    Definir a, b, c, mayor, menor Como Entero
    Escribir "Ingrese tres números:"
    Leer a, b, c
	
    mayor <- a
    menor <- a
	
    Si b > mayor Entonces
        mayor <- b
    FinSi
    Si c > mayor Entonces
        mayor <- c
    FinSi
	
    Si b < menor Entonces
        menor <- b
    FinSi
    Si c < menor Entonces
        menor <- c
    FinSi
	
    Escribir "El número mayor es: ", mayor
    Escribir "El número menor es: ", menor
FinProceso
