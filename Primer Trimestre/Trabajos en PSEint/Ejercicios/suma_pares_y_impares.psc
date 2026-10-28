Algoritmo suma_pares_y_impares
	Definir i,num, sumaPares,sumaImpares Como Entero
	
	
	sumaPares=0
	sumaImpares=0
	Para i<-11 Hasta 15 hacer 
		escribir "ingrese numero entero"
		leer num
		si (num mod 2=0) Entonces
			sumaPares=sumaPares+num
		SiNo
			sumaImpares=sumaImpares+num
		FinSi
		
	FinPara
	escribir "la suma de los numero ingresados es " sumaPares
	escribir "la suma de los impares es:  " sumaImpares
FinAlgoritmo
