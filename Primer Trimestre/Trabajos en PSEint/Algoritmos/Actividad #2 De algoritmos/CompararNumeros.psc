Algoritmo CompararNumeros
	//definir variables
	
	Definir  a,b,suma,diferencia,producto,division como real;
	//datos de entrada
		Escribir "Ingrese el primer número:";
		Leer a;
		Escribir "Ingrese el segundo número:";
		Leer b;
		//procesos
		Si a > b Entonces
			suma <- a + b;
			diferencia <- a - b;
			Escribir "Suma: ", suma;
			Escribir "Diferencia: ", diferencia;
		SiNo
			producto <- a * b;
			division <- a / b;
			//salida
			Escribir "Producto: ", producto;
			Escribir "División: ", division;
		FinSi
FinAlgoritmo
