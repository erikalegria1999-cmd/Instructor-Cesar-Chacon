Proceso SumaDigitos
	
    Definir numeros, suma Como Entero
    Dimension numeros[10], suma[10]
	
    Definir i, dec, uni Como Entero
	
    Para i <- 1 Hasta 10 Hacer
        Repetir
            Escribir "Digite un número positivo de dos dígitos:"
            Leer numeros[i]
        Hasta Que numeros[i] >= 10 Y numeros[i] <= 99
		
        dec <- Trunc(numeros[i] / 10)
        uni <- numeros[i] mod 10
		
        suma[i] <- dec + uni
    FinPara
	
    Escribir "ARREGLO DE ENTRADA"
    Para i <- 1 Hasta 10 Hacer
        Escribir numeros[i]
    FinPara
	
    Escribir "ARREGLO DE SUMA DE DIGITOS"
    Para i <- 1 Hasta 10 Hacer
        Escribir suma[i]
    FinPara
	
FinProceso
