Proceso Bisiesto_y_Dias
    Definir mes, anio, dias Como Entero
    Escribir "Ingrese su mes de nacimiento (1-12):"
    Leer mes
    Escribir "Ingrese su año de nacimiento:"
    Leer anio
	
    Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0) Entonces
        Escribir "El año ", anio, " es bisiesto."
    Sino
        Escribir "El año ", anio, " no es bisiesto."
    FinSi
	
    Segun mes Hacer
        1,3,5,7,8,10,12:
            dias <- 31
        4,6,9,11:
            dias <- 30
        2:
            Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0) Entonces
                dias <- 29
            Sino
                dias <- 28
            FinSi
    FinSegun
	
    Escribir "El mes ", mes, " tiene ", dias, " días."
FinProceso
