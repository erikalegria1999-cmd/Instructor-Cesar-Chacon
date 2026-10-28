Algoritmo arreglo_suma
	//definir variables 
	dimension numeros[10]
	definir numeros,suma,i Como Entero
	Definir  limite Como Entero
	//inicio de las variables
	suma<- 0
	limite=9
	//leer los datos
	para i=0 hasta limite Hacer
		Escribir "ingrese numero para guardar en el arreglo"
		leer numeros[i]
	FinPara
	//calcula la suma de los datos
	para i=0 hasta limite Hacer
		suma<- suma+numeros[i]
	FinPara
	//mostrar los resultados
	Escribir "la suma de los numeros de los arrreglos es:" suma
FinAlgoritmo
