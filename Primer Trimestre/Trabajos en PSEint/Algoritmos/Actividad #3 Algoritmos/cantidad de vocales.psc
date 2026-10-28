Proceso Ejercicio9
    Definir texto Como Cadena
    Definir i, vocales Como Entero
    Definir letra Como Cadena
	
    vocales <- 0
	
    Escribir "Ingrese una frase: "
    Leer texto
	
    texto <- Minusculas(texto)
	
    Para i <- 1 Hasta Longitud(texto) Hacer
        letra <- Subcadena(texto, i, i)
		
        Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
            vocales <- vocales + 1
        FinSi
    FinPara
	
    Escribir "Cantidad de vocales: ", vocales
FinProceso
