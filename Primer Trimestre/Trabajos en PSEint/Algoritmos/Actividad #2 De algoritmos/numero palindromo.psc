Proceso Numero_Palindromo
    Definir num, d1, d2, d3, inverso Como Entero
    Escribir "Ingrese un número de tres dígitos positivo:"
    Leer num
	
    Si num > 99 Y num < 1000 Entonces
        d1 <- trunc(num / 100)
        d2 <- trunc((num MOD 100) / 10)
        d3 <- num MOD 10
        inverso <- d3 * 100 + d2 * 10 + d1
		
        Si num = inverso Entonces
            Escribir "El número ", num, " es igual al derecho y al revés."
        Sino
            Escribir "El número ", num, " no es igual al derecho y al revés."
        FinSi
    Sino
        Escribir "El número no es válido. Debe tener tres dígitos positivos."
    FinSi
FinProceso

