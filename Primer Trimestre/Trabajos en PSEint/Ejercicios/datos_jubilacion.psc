Algoritmo datos_jubilacion
	definir edad Como Entero
	definir genero como caracter
	// datos de entrada 
	escribir "ingrese el genero"
	leer genero
	Escribir "ingrese la edad"
	leer edad	
	//procesos
	genero = Minusculas(genero)
	si genero ="hombre" Entonces
		si edad >=62  Entonces
		Escribir "jubilado"
	sino 
		Escribir "no jubilado"
	FinSi
FinSi

si genero ="mujer" Entonces
	si edad >=57  Entonces
		Escribir "jubilada"
	sino 
		Escribir "no jubilada"
	FinSi
FinSi
	
	
	
FinAlgoritmo
