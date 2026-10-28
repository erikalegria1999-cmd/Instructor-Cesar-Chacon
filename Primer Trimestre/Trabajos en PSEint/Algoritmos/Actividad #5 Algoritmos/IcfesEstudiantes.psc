Proceso IcfesEstudiantes
	
    Definir nombre Como Cadena
    Definir puntaje, i, suma, mayor, menor, posMayor, posMenor Como Entero
	
    Dimension nombre[10], puntaje[10]
	
    suma <- 0
	
    Para i <- 1 Hasta 10 Hacer
        Escribir "Nombre del estudiante ", i , ":"
        Leer nombre[i]
		
        Repetir
            Escribir "Puntaje del estudiante ", i  " (1 a 400):"
            Leer puntaje[i]
        Hasta Que puntaje[i] >= 1 Y puntaje[i] <= 400
		
        suma <- suma + puntaje[i]
    FinPara
	
    mayor <- puntaje[1]
    menor <- puntaje[1]
    posMayor <- 0
    posMenor <- 0
	
    Para i <- 1 Hasta 10 Hacer
        Si puntaje[i] > mayor Entonces
            mayor <- puntaje[i]
            posMayor <- i
        FinSi
		
        Si puntaje[i] < menor Entonces
            menor <- puntaje[i]
            posMenor <- i
        FinSi
    FinPara
	
    Escribir "RESULTADOS "
    Escribir "Mayor puntaje: ", nombre[posMayor], " con ", mayor
    Escribir "Menor puntaje: ", nombre[posMenor], " con ", menor
    Escribir "Promedio de puntajes: ", suma / 10
	
FinProceso
