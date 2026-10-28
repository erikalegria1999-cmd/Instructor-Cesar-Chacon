Proceso Venta_Propiedad
    Definir area, valor_m2, precio_venta, cuota_inicial Como Real
    Definir forma_pago Como Entero
	
    Escribir "Ingrese el área de la propiedad (m2):"
    Leer area
    Escribir "Ingrese el valor del metro cuadrado:"
    Leer valor_m2
    Escribir "Ingrese la forma de pago (1: descuento 10%, 2: recargo 8%):"
    Leer forma_pago
	
    precio_venta <- area * valor_m2
    cuota_inicial <- precio_venta * 0.20
	
    Si forma_pago = 1 Entonces
        cuota_inicial <- cuota_inicial - (cuota_inicial * 0.10)
    Sino
        Si forma_pago = 2 Entonces
            cuota_inicial <- cuota_inicial + (cuota_inicial * 0.08)
        Sino
            Escribir "Forma de pago no válida."
        FinSi
    FinSi
	
    Escribir "Precio de venta: ", precio_venta
    Escribir "Cuota inicial: ", cuota_inicial
FinProceso
