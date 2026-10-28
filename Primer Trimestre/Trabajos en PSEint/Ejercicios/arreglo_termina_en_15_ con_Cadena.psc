Proceso  arreglo_termina_en_15_ con_Cadena
	
    Dimension num[10]
    
    // Definir variables
    Definir numeroTexto Como Cadena
    Definir Longitu, i, num Como Entero
	
    // Leer números en arreglo
    Para i = 0 Hasta 9 Hacer
        Escribir "Número entero:"
        Leer num[i]
    FinPara
	
    // Procesos
    Para i = 0 Hasta 9 Hacer
        numeroTexto = ConvertirATexto(num[i])
        Longitu = Longitud(numeroTexto)
        Escribir "La longitud del número es: ", Longitu
		
        // Extraer últimos dos caracteres
        Si Subcadena(numeroTexto, Longitu-1, Longitu) = "15" Entonces
            Escribir "El número ", num[i], " termina en 15"
        SiNo
            Escribir "El número ", num[i], " NO termina en 15"
			esperar 1 segundo 
        FinSi
		
    FinPara
	
FinProceso


