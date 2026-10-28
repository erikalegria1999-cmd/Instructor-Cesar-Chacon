import csv
# leer un archivo CSV y mostrar su contenido en la consola


# with open("estudiantes.csv", newline="", encoding="utf-8") as archivo:
#     lector = csv.reader(archivo)
#     for fila in lector:
#         print(fila)

#  leer un archivo CSV y mostrar por filas especificas

# with open ("estudiantes.csv", newline="", encoding="utf-8") as archivo:
#     lector = csv.DictReader(archivo)
#     for fila in lector:
#         print(fila["nombre"], fila["edad"], fila["sexo"], fila["programa"], fila["promedio"])


# crear un archivo CSV

# datos=[
#     ["nombre","edad","ciudad"],
#     ["laura", 22, "cali"],
#     ["pedro", 28,"Bogota"]
# ]
# with open("nuevasPersonas.csv", "w", newline="", encoding="utf-8") as archivo:
#     escritor = csv.writer(archivo)
#     escritor.writerows(datos)


# Agregar Datos Csv
# agregarPersona= ["maria",35,"Barranquilla"]

# with open("nuevasPersonas.csv", "a", newline="", encoding= "utf-8") as archivo:
#     escritor = csv.writer(archivo)
#     escritor.writerow(agregarPersona)


