Proceso Ejercicio3
    Definir voto, i Como Entero
    Definir clave Como Entero
    Definir votos1, votos2, votos3, votosBlanco Como Entero
    Definir totalVotaron Como Entero
	
    votos1 <- 0
    votos2 <- 0
    votos3 <- 0
    votosBlanco <- 0
    totalVotaron <- 0
	
    clave <- 12345  // clave para cerrar votación
	
    Para i <- 1 Hasta 50 Hacer
        Escribir "MENU ELECCIONES:"
        Escribir "1. Candidato Uno"
        Escribir "2. Candidato Dos"
        Escribir "3. Candidato Tres"
        Escribir "4. Blanco"
        Escribir "Ingrese su voto o la clave para cerrar: "
        Leer voto
		
        Si voto = clave Entonces
            Escribir "Elecciones cerradas por clave."
            
        FinSi
		
        Segun voto Hacer
            1:
                votos1 <- votos1 + 1
            2:
                votos2 <- votos2 + 1
            3:
                votos3 <- votos3 + 1
            4:
                votosBlanco <- votosBlanco + 1
            De Otro Modo:
                Escribir "Voto inválido."
        FinSegun
		
        totalVotaron <- totalVotaron + 1
    FinPara
	
    Escribir "--------- RESULTADOS ---------"
    Escribir "Personas que votaron: ", totalVotaron
    Escribir "Votos candidato 1: ", votos1
    Escribir "Votos candidato 2: ", votos2
    Escribir "Votos candidato 3: ", votos3
    Escribir "Votos en blanco: ", votosBlanco
FinProceso
