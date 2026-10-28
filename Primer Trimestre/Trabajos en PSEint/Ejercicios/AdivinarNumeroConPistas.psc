Algoritmo AdivinarNumeroConPistas
	
	Definir numeroSecreto, intento, numeroUsuario, diferencia Como Entero
	Definir ganado Como Logico
	
	ganado <- Falso
	intento <- 1
	
	// Generar número aleatorio entre 1 y 100
	numeroSecreto <- Aleatorio(1,100)
	
	Escribir "¡Bienvenido al juego de adivinar el número!"
	Escribir "Debes adivinar un número entre 1 y 100."
	Escribir "Tienes 5 intentos."
	
	Mientras intento <= 5 Y ganado = Falso Hacer
		
		Escribir ""
		Escribir "Intento ", intento, " de 5"
		Escribir "Ingresa tu número: "
		Leer numeroUsuario
		
		Si numeroUsuario = numeroSecreto Entonces
			ganado <- Verdadero
			
		SiNo
			
			// Indicar si es mayor o menor
			Si numeroUsuario > numeroSecreto Entonces
				Escribir "El número secreto es más pequeño."
			SiNo
				Escribir "El número secreto es más grande."
			FinSi
			
			// Calcular diferencia para dar pistas
			diferencia <- Abs(numeroUsuario - numeroSecreto)
			
			// Pistas según la diferencia
			Si diferencia > 30 Entonces
				Escribir "Pista: Estás MUY lejos."
			SiNo
				Si diferencia >= 16 Entonces
					Escribir "Pista: Estás lejos."
				SiNo
					Si diferencia >= 6 Entonces
						Escribir "Pista: Estás cerca."
					SiNo
						Si diferencia >= 1 Entonces
							Escribir "Pista: ¡Estás MUY cerca!"
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinSi
		
		intento <- intento + 1
		
	FinMientras
	
	// Resultado final
	Si ganado Entonces
		Escribir ""
		Escribir "¡Felicidades! Adivinaste el número."
	SiNo
		Escribir ""
		Escribir "Perdiste. El número era: ", numeroSecreto
	FinSi

FinAlgoritmo

