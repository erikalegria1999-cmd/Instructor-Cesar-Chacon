Proceso calificacion_final
	//Definir variables
	definir promedio,examen,trabajo,nota1,nota2,nota3 Como Real;
	definir multiplicacion,division,suma,resta Como real; 
	//Datos De entrada
	escribir "ingrese la nota del primer parcial";
	leer nota1;
	escribir "ingrese la nota del segundo parcial";
	leer nota2;
	Escribir "ingrese la nota del tercer parcial";
	leer nota3;
	escribir "Nota del examen final es";
	leer examen;
	escribir "Ingrese la nota del trabajo final:";
	leer trabajo;
//procesos
suma<-nota1+ nota2+ nota3;
suma<- (suma * 0.55);
examen<- (examen*0.3);
trabajo<- (trabajo*0.15);
promedio<- (suma+examen+trabajo)/3;

 //Datos de Salida
 escribir "El 55% de la calificacion de los parciales es:", suma;
 escribir "El 30% del Examen final es:", examen; 
 escribir "El 15% del Trabajo final es:", trabajo;
 Escribir "el promedio es", promedio;
FinProceso
