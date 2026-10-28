Proceso ConversorGeneral
	
    Definir opcion Como Entero
	
    Repetir
        Escribir "CONVERSOR GENERAL DE UNIDADES"
        Escribir "1. Unidades de Masa"
        Escribir "2. Unidades de Longitud"
        Escribir "3. Unidades de Temperatura"
        Escribir "4. Medidas en Bytes"
        Escribir "5. Unidades de Tiempo"
        Escribir "6. Salir"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                SubProcesoMasa(1)
            Caso 2:
                SubProcesoLongitud(2)
            Caso 3:
                SubProcesoTemperatura(3)
            Caso 4:
                SubProcesoBytes(4)
            Caso 5:
                SubProcesoTiempo(5)
            Caso 6:
                Escribir "Saliendo del programa..."
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
    Hasta Que opcion = 6
	
FinProceso

//SUBPROCESOS DE MASA

SubProceso SubProcesoMasa(1)
	
    Definir valor Como Real
    Definir opt Como Entero
	
    Repetir
        Escribir " CONVERSOR DE MASA"
        Escribir "1. Gramos a Kilogramos y Libras"
        Escribir "2. Kilogramos a Gramos y Libras"
        Escribir "3. Libras a Gramos y Kilogramos"
        Escribir "4. Volver"
        Leer opt
		
        Segun opt Hacer
            Caso 1:
                Escribir "Ingrese gramos:"
                Leer valor
                Escribir valor, " g = ", valor/1000, " kg"
                Escribir valor, " g = ", valor/453.59237, " lb"
				
            Caso 2:
                Escribir "Ingrese kilogramos:"
                Leer valor
                Escribir valor, " kg = ", valor*1000, " g"
                Escribir valor, " kg = ", valor*2.2046226, " lb"
				
            Caso 3:
                Escribir "Ingrese libras:"
                Leer valor
                Escribir valor, " lb = ", valor*453.59237, " g"
                Escribir valor, " lb = ", valor/2.2046226, " kg"
				
            Caso 4:
                Escribir "Volviendo al menú..."
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
    Hasta Que opt = 4
	
FinSubProceso
//SUBPROCESOS DE LONGITUD

SubProceso SubProcesoLongitud(2)
	
    Definir valor Como Real
    Definir opt Como Entero
	
    Repetir
        Escribir "CONVERSOR DE LONGITUD "
        Escribir "1. Metros a Kilómetros y Centímetros"
        Escribir "2. Kilómetros a Metros y Centímetros"
        Escribir "3. Centímetros a Metros y Kilómetros"
        Escribir "4. Volver"
        Leer opt
		
        Segun opt Hacer
            Caso 1:
                Escribir "Ingrese metros:"
                Leer valor
                Escribir valor, " m = ", valor/1000, " km"
                Escribir valor, " m = ", valor*100, " cm"
				
            Caso 2:
                Escribir "Ingrese kilómetros:"
                Leer valor
                Escribir valor, " km = ", valor*1000, " m"
                Escribir valor, " km = ", valor*100000, " cm"
				
            Caso 3:
                Escribir "Ingrese centímetros:"
                Leer valor
                Escribir valor, " cm = ", valor/100, " m"
                Escribir valor, " cm = ", valor/100000, " km"
				
            Caso 4:
                Escribir "Volviendo..."
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
    Hasta Que opt = 4
	
FinSubProceso
//SUBPROCESOS DE TEMPERATURA
SubProceso SubProcesoTemperatura(3)
	
    Definir valor Como Real
    Definir opt Como Entero
	
    Repetir
        Escribir " CONVERSOR DE TEMPERATURA"
        Escribir "1. Celsius a Fahrenheit y Kelvin"
        Escribir "2. Fahrenheit a Celsius y Kelvin"
        Escribir "3. Kelvin a Celsius y Fahrenheit"
        Escribir "4. Volver"
        Leer opt
		
        Segun opt Hacer
            Caso 1:
                Escribir "Ingrese Celsius:"
                Leer valor
                Escribir valor, " °C = ", valor*9/5 + 32, " °F"
                Escribir valor, " °C = ", valor + 273.15, " K"
				
            Caso 2:
                Escribir "Ingrese Fahrenheit:"
                Leer valor
                Escribir valor, " °F = ", (valor-32)*5/9, " °C"
                Escribir valor, " °F = ", (valor-32)*5/9 + 273.15, " K"
				
            Caso 3:
                Escribir "Ingrese Kelvin:"
                Leer valor
                Escribir valor, " K = ", valor-273.15, " °C"
                Escribir valor, " K = ", (valor-273.15)*9/5 + 32, " °F"
				
            Caso 4:
                Escribir "Volviendo..."
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
    Hasta Que opt = 4
	
FinSubProceso
//SUBPROCESOS DE BYTES 
SubProceso SubProcesoBytes(4)
	
    Definir valor Como Real
    Definir opt Como Entero
	
    Repetir
        Escribir "CONVERSOR DE BYTES "
        Escribir "1. Bytes a Megabytes y Gigabytes"
        Escribir "2. Megabytes a Bytes y Gigabytes"
        Escribir "3. Gigabytes a Bytes y Megabytes"
        Escribir "4. Volver"
        Leer opt
		
        Segun opt Hacer
            Caso 1:
                Escribir "Ingrese Bytes:"
                Leer valor
                Escribir valor, " B = ", valor/1048576, " MB"
                Escribir valor, " B = ", valor/1073741824, " GB"
				
            Caso 2:
                Escribir "Ingrese Megabytes:"
                Leer valor
                Escribir valor, " MB = ", valor*1048576, " B"
                Escribir valor, " MB = ", valor/1024, " GB"
				
            Caso 3:
                Escribir "Ingrese Gigabytes:"
                Leer valor
                Escribir valor, " GB = ", valor*1073741824, " B"
                Escribir valor, " GB = ", valor*1024, " MB"
				
            Caso 4:
                Escribir "Volviendo..."
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
    Hasta Que opt = 4
	
FinSubProceso


//SUBPROCESOS DE TIEMPO 

SubProceso SubProcesoTiempo(5)

    Definir valor Como Real
    Definir opt Como Entero
	
    Repetir
        Escribir "CONVERSOR DE TIEMPO"
        Escribir "1. Segundos a Minutos y Horas"
        Escribir "2. Minutos a Segundos y Horas"
        Escribir "3. Horas a Segundos y Minutos"
        Escribir "4. Volver"
        Leer opt
		
        Segun opt Hacer
            Caso 1:
                Escribir "Ingrese segundos:"
                Leer valor
                Escribir valor, " s = ", valor/60, " min"
                Escribir valor, " s = ", valor/3600, " h"
				
            Caso 2:
                Escribir "Ingrese minutos:"
                Leer valor
                Escribir valor, " min = ", valor*60, " s"
                Escribir valor, " min = ", valor/60, " h"
				
            Caso 3:
                Escribir "Ingrese horas:"
                Leer valor
                Escribir valor, " h = ", valor*3600, " s"
                Escribir valor, " h = ", valor*60, " min"
				
            Caso 4:
                Escribir "Volviendo..."
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
    Hasta Que opt = 4

FinSubProceso
