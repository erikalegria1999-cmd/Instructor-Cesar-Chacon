Proceso TemperaturasSemana
	
    Dimension T[7, 2]
    Definir i,t ,  opcion, mayor, diaMayor, d Como Entero
	
    Escribir "Ingrese temperaturas de la semana"
    Para i <- 1 Hasta 7 Hacer
        Escribir "Temperatura minima del dia ", i, ": "
        Leer T[i, 1]
		
        Escribir "Temperatura maxima del dia ", i, ": "
        Leer T[i, 2]
    FinPara
	
    Repetir
        Escribir ""
        Escribir " MENU TEMPERATURAS "
        Escribir "1. Consultar dia con mayor temperatura"
        Escribir "2. Consultar temperaturas de un dia"
        Escribir "3. Salir"
        Escribir "Ingrese opcion: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                mayor = T[1, 2]
                diaMayor = 1
				
                Para i <- 2 Hasta 7 Hacer
                    Si T[i, 2] > mayor Entonces
                        mayor = T[i, 2]
                        diaMayor = i
                    FinSi
                FinPara
				
                Escribir "El dia ", diaMayor, " tuvo la temperatura maxima de ", mayor, " grados"
				
            2:
                Escribir "Ingrese dia (1 a 7): "
                Leer d
				
                Si d >= 1 Y d <= 7 Entonces
                    Escribir "Temperatura minima: ", T[d, 1]
                    Escribir "Temperatura maxima: ", T[d, 2]
                Sino
                    Escribir "Dia no valido"
                FinSi
				
            3:
                Escribir "Saliendo..."
				
            De Otro Modo:
                Escribir "Opcion invalida"
        FinSegun
		
    Hasta Que opcion = 3
	
FinProceso
