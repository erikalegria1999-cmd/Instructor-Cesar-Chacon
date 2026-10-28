Proceso Raiz_Cuadrada
    Definir num, rais Como Real
    Escribir "Ingrese un número:"
    Leer num
    Si num >= 0 Entonces
        rais <- RAIZ(num)
        Escribir "La raíz cuadrada de ", num, " es ", rais
    Sino
        Escribir "El número tiene raíz imaginaria"
    FinSi
FinProceso
