Proceso Calcular_porcentajes_entre_hombres_Y_mujeres
	//Definir variables
	definir hombres, mujeres como reales;
	Definir suma,resta,multiplicacion,dividsion Como Real;;
	//Datos De entrada 
	escribir "ingrese la cantiadad de Hombres:";
	leer hombres;
	Escribir "Ingrese la cantidad de Mujeres:";
	leer mujeres;
	//Procesos
	suma<- hombres+mujeres;
	hombres<- (hombres/suma)*100;
	mujeres<- (mujeres/suma)*100;
	//Datos de salida 
	escribir " el porcentaje De hombres Es:", hombres, "El porcentaje de las mujeres Es:",mujeres;
FinProceso
