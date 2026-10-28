Algoritmo DescuentoProducto
	
	//definir variables
	Definir  nombre como caracter;
	definir precio,cantidad,valorTotal,descuento,valorNeto Como Real;
	Escribir "Nombre del producto:";
	Leer nombre;
	Escribir "Precio del producto:";
	Leer precio;
	Escribir "Cantidad comprada:";
	Leer cantidad;
	//Proceso 	
	valorTotal <- precio * cantidad;
	
	Si cantidad > 3 Entonces
		descuento <- valorTotal * 0.20;
	SiNo
		Si cantidad = 2 Entonces
			descuento <- valorTotal * 0.10;
		SiNo
			descuento <- valorTotal * 0.05;
		FinSi
	FinSi
	
	valorNeto <- valorTotal - descuento;
	// salida
	Escribir "Producto: ", nombre;
	Escribir "Precio: ", precio;
	Escribir "Cantidad: ", cantidad;
	Escribir "Valor total: ", valorTotal;
	Escribir "Descuento: ", descuento;
	Escribir "Valor a pagar: ", valorNeto;
FinAlgoritmo