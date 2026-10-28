Algoritmo DigitosIguales
	
	
	definir num,d1,d2 Como Real;
	//entrada
	Escribir "Ingrese un número entero de dos dígitos:";
	Leer num;
	//procesos
	d1 <- trunc(num / 10);
	d2 <- num % 10;
	//salida
	Si d1 = d2 Entonces
		Escribir "Los dos dígitos son iguales.";
	SiNo
		Escribir "Los dos dígitos NO son iguales.";
	FinSi
FinAlgoritmo