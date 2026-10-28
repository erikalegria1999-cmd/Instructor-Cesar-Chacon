Algoritmo salario_2026
	Definir sueldo, incrementa, salarioMinimo, nuevosueldo Como Entero
	Escribir 'ingrese el sueldo'
	Leer sueldo
	salarioMinimo <- 1423500
	Si (sueldo>=salarioMinimo) Y (sueldo<=salarioMinimo*2) Entonces
		incrementa <- sueldo*10/100
		nuevosueldo <- sueldo+incrementa
	SiNo
		Si (sueldo>=salarioMinimo*2) Y (sueldo<=salarioMinimo*4) Entonces
			incrementa <- sueldo*7/100
			nuevosueldo <- sueldo+incrementa
		SiNo
			Si (sueldo>=salarioMinimo*4) Entonces
				incrementa <- sueldo*5/100
				nuevosueldo <- sueldo+incrementa
			FinSi
		FinSi
	FinSi
	Escribir 'sueldo actual ', sueldo
	Escribir 'nuevo sueldo  ', nuevosueldo
FinAlgoritmo
