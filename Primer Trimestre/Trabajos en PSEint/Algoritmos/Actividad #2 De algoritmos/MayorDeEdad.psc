Algoritmo MayorDeEdad
	//definir variables
	definir nombre Como Caracter;
	Definir edad Como Entero;
	//entrada
		Escribir "Ingrese nombre:";
		Leer nombre;
		Escribir "Ingrese edad:";
		Leer edad;
		//Proceso y salida
		
		Si edad >= 18 Entonces
			Escribir nombre, " tiene ", edad, " años y es mayor de edad.";
		SiNo
			Escribir nombre, " tiene ", edad, " años y es menor de edad.";
		FinSi
FinAlgoritmo
