Proceso Convertidor_Medidas
	
    Definir opcion1, subopcion Como Entero
    Definir valor1, resultado Como Real
	
    Repetir
        Limpiar Pantalla
        Escribir "CONVERTIDOR DE MEDIDAS"
        Escribir "1. Convertir Tiempo"
        Escribir "2. Convertir Masa"
        Escribir "3. Convertir Longitud"
        Escribir "4. Convertir Bytes"
        Escribir "5. Salir"
        Escribir "Seleccione una opción:"
        Leer opcion1
		
        Segun opcion1 Hacer
			
            1:
                Limpiar Pantalla
                Escribir "TIEMPO "
                Escribir "1. Segundos a Minutos"
                Escribir "2. Minutos a Horas"
                Escribir "3. Horas a Segundos"
                Escribir "Seleccione:"
                Leer subopcion
				
                Escribir "Ingrese el valor:"
                Leer valor1
				
                Segun subopcion Hacer
                    1: resultado <- valor1 / 60
                    2: resultado <- valor1 / 60
                    3: resultado <- valor1 * 3600
                    De Otro Modo:
                        Escribir "Opción inválida"
                FinSegun
				
                Escribir "Resultado: ", resultado
                Esperar Tecla
				
            2:
                Limpiar Pantalla
                Escribir "MASA"
                Escribir "1. Gramos a Kilogramos"
                Escribir "2. Kilogramos a Gramos"
                Escribir "3. Libras a Kilogramos"
                Escribir "4. Kilogramos a Libras"
                Leer subopcion
				
                Escribir "Ingrese el valor:"
                Leer valor1
				
                Segun subopcion Hacer
                    1: resultado <- valor1 / 1000
                    2: resultado <- valor1 * 1000
                    3: resultado <- valor1 * 0.453592
                    4: resultado <- valor1 / 0.453592
                    De Otro Modo:
                        Escribir "Opción inválida"
                FinSegun
				
                Escribir "Resultado: ", resultado
                Esperar Tecla
				
            3:
                Limpiar Pantalla
                Escribir "LONGITUD "
                Escribir "1. Metros a Centímetros"
                Escribir "2. Centímetros a Metros"
                Escribir "3. Metros a Kilómetros"
                Escribir "4. Kilómetros a Metros"
                Leer subopcion
				
                Escribir "Ingrese el valor:"
                Leer valor1
				
                Segun subopcion Hacer
                    1: resultado <- valor1 * 100
                    2: resultado <- valor1 / 100
                    3: resultado <- valor1 / 1000
                    4: resultado <- valor1 * 1000
                    De Otro Modo:
                        Escribir "Opción inválida"
                FinSegun
				
                Escribir "Resultado: ", resultado
                Esperar Tecla
				
            4:
                Limpiar Pantalla
                Escribir "BYTES "
                Escribir "1. Bytes a KB"
                Escribir "2. KB a MB"
                Escribir "3. MB a GB"
                Escribir "4. GB a MB"
                Leer subopcion
				
                Escribir "Ingrese el valor:"
                Leer valor1
				
                Segun subopcion Hacer
                    1: resultado <- valor1 / 1024
                    2: resultado <- valor1 / 1024
                    3: resultado <- valor1 / 1024
                    4: resultado <- valor1 * 1024
                    De Otro Modo:
                        Escribir "Opción inválida"
                FinSegun
				
                Escribir "Resultado: ", resultado
                Esperar Tecla
				
            5:
                Escribir "Saliendo."
				
            De Otro Modo:
                Escribir "Opción inválida"
                Esperar Tecla
				
        FinSegun
		
    Hasta Que opcion1 = 5

FinProceso
