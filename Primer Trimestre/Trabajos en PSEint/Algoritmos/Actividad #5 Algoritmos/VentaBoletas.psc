Proceso VentaBoletas
    Definir i, totalBoletas, opcion, ced, existe, cantidad, pos Como Entero
	definir cedulas Como Entero
    Dimension cedulas[100]
	
    totalBoletas <- 100
    pos <- 1
	
    Repetir
        Escribir " MENU VENTA DE BOLETAS"
        Escribir "1. Comprar boletas"
        Escribir "2. Mostrar boletas disponibles"
        Escribir "3. Salir"
        Escribir "Ingrese una opción:"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Si totalBoletas = 0 Entonces
                    Escribir "NO HAY BOLETAS DISPONIBLES."
                SiNo
                    Escribir "Digite su número de cédula:"
                    Leer ced
					
                    // Verificar si ya existe (solo si ya hay registros)
                    existe <- 0
                    Si pos > 1 Entonces
                        Para i <- 1 Hasta pos-1 Hacer
                            Si cedulas[i] = ced Entonces
                                existe <- 1
                            FinSi
                        FinPara
                    FinSi
					
                    Si existe = 1 Entonces
                        Escribir "La cédula ya compró boletas."
                    SiNo
                        Repetir
                            Escribir "¿Cuántas boletas desea comprar? (1 a 4)"
                            Leer cantidad
                        Hasta Que cantidad >= 1 Y cantidad <= 4
						
                        Si cantidad > totalBoletas Entonces
                            Escribir "No hay suficientes boletas."
                        SiNo
                            cedulas[pos] <- ced
                            pos <- pos + 1
                            totalBoletas <- totalBoletas - cantidad
                            Escribir "Compra realizada con éxito."
                        FinSi
                    FinSi
                FinSi
				
            2:
                Escribir "Boletas disponibles: ", totalBoletas
				
            3:
                Escribir "Saliendo..."
				
            De Otro Modo:
                Escribir "Opción no válida."
				
        FinSegun
		
    Hasta Que opcion = 3 O totalBoletas = 0
	
FinProceso
