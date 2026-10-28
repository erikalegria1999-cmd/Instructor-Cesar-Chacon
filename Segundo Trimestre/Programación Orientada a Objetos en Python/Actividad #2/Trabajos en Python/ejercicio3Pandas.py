import pandas as pd

# -------leer datos de un dataframe CSV -----
# archivo = pd.read_csv('estudiantes.csv')
# print(archivo)

archivo = pd.read_csv('estudiantes.csv')
# -----Mostrar información del archivo------
# print(archivo.head()) # muestra las primeras filas del dataframe
# print(archivo.columns) # muestra las columnas del dataframe
# print(archivo.info())
# -----Seleccionar columnas------
# print(archivo["nombre"])  # muestra la columna "nombre"
# print(archivo[["nombre", "promedio"]]) # muestra las columnas "nombre" y "promedio"
# -----filtrar datos------
# aprobados = archivo[archivo["promedio"]> 40]  #Filtrar los datos
# print(aprobados)
# -----Operaciones  estadísticas------
# print("promedio general:", archivo["promedio"].mean()) # muestra el promedio 
# print("promedio máximo:", archivo["promedio"].max()) # muestra el numero  máximo
# print("promedio mínimo:", archivo["promedio"].min()) # muestra el numero mínimo
# Guardar Datos en un nuevo archivo CSV
# aprobados.to_csv('aprobados.csv', index=False) # guarda el dataframe aprobado en un nuevo archivo CSV sin el índice