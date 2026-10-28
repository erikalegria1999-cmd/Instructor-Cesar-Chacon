Algoritmo operacion_diferencia_numeros
	
	Definir N1,N2, diferencia,suma,producto Como Entero
	Definir  digito1,digito2,digito3,digito4 Como Entero
	N1 <- Aleatorio(10,99)
	N2 <- Aleatorio(10,99)
	diferencia<-  abs(N1-N2)
	Escribir N1
	Escribir N2
	si (diferencia mod 2 )= 0 Entonces
		
		// es par 
		digito1 <- trunc (N1/10)
		digito2 <- N1 mod 10 
		
		digito3 = trunc(N2/10)
		digito4 =  N2 mod 10 
		suma <- digito1*digito2+digito3+digito4
		escribir " la suma de los digitos es: " suma
	FinSi
	
	
	si diferencia = 2 o diferencia = 3 o diferencia = 5 o diferencia = 7 Entonces
		producto <- N1*N2
		Escribir "El producto de " N1 " * " N2 " es:"  producto
		
	FinSi
	
	si diferencia = 4 o (diferencia mod 10 )=4 entonces 
		// par
		digito1 <- trunc (N1/10)
		digito2 <- N1 mod 10 		
		digito3 = trunc(N2/10)
		digito4 =  N2 mod 10 
		
		Escribir " la suma de los dos digitos es: " digito1 "," digito2 "," digito3 "," digito4  
	FinSi
	
FinAlgoritmo
