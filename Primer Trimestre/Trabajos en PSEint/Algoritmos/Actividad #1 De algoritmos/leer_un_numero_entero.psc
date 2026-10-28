Proceso leer_un_numero_entero
	//Definicion de las variables
	Definir  Numero como real; 
	//Datos de entrada
	Escribir "Ingrese un numero de dos cifras:";
	Leer Numero;
	//Procesos
	si numero= TRUNC(numero) Entonces
		escribir"es entero";
	SiNo
		escribir"es decimal";
	FinSi
	
	
FinProceso
