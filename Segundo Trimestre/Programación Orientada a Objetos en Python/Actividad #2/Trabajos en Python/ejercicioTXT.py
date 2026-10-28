# crear un archivo de texto# 
# try:
#     with open("salida.txt", "w", encoding= "utf-8") as archivo:
#         archivo.write("Hola mundo desde Python\n")
#         archivo.write("Esta es una segunda línea en el archivo\n")
# except IOError as error:
#     print(str(error))"""
# #leer el archivo de texto
# """
# try:
#     with open("salida.txt", "r", encoding="utf-8") as archivo:
#         texto = archivo.readlines()
#         total_lineas = len(texto)
#         print("total de lineas:" )
#         print(type(texto))
#         print(texto)
#         archivo.close() 
        
# except IOError as error:
#     print(str(error))

#leer archivo linea por linea
try:
    with open("salida.txt", "r", encoding="utf-8") as archivo:
        for linea in archivo:
            print("linea leida:")
            print(linea.strip())
        archivo.close() 
except IOError as error:
    print(str(error))   








