Algoritmo sin_titulo
	Definir numero,resultado,residuo,cantidad,suma,numeroLeido,promedio Como Entero
	Definir salir Como Logico
	
	suma=0
	cantidad=0
	salir =Falso
	escribir"ingrese numero para determinanr numero "
	leer numeroLeido
	
	
	numero=numeroLeido
	Repetir 
		resultado= trunc (numero/10)
		residuo= numero mod 10
		suma = suma+residuo
		cantidad =cantidad +1
		si(resultado <10) Entonces
			salir= Verdadero
			suma = suma+ resultado
			cantidad =cantidad +1
		sino 
			numero=resultado
		FinSi
	Hasta Que salir=verdadero 
	
	promedio = trunc (suma/cantidad) 
	escribir "el promedio entero de los digitos del numero : " numeroLeido  "  es " promedio
	
FinAlgoritmo
