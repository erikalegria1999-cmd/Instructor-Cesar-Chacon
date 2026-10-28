import json

# leer el archivo json
with open("filtroAdso.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)

# lista para guardar los aprendices filtrados
filtroPersonas = []

# recorrer los datos
for persona in datos:
    if persona["CODIGO_PROGRAMA"] == 228118 and persona["ESTADO_APRENDIZ"] == "Formacion":
        filtroPersonas.append(persona)

# MENÚ
while True:

    print("\nMENU ADSO")
    print("1. Mostrar aprendices")
    print("2. Mostrar cantidad de aprendices")
    print("3. Salir")

    opcion = input("Seleccione una opción: ")

    if opcion == "1":

        for persona in filtroPersonas:
            print("\nNombre:", persona["NOMBRE"])
            print("Apellido:", persona["PRIMER_APELLIDO"])
            print("Estado:", persona["ESTADO_APRENDIZ"])
            print("Código programa:", persona["CODIGO_PROGRAMA"])

    elif opcion == "2":

        print("\nCantidad de aprendices:", len(filtroPersonas))

    elif opcion == "3":

        print("Programa finalizado")
        break

    else:
        print("Opción no válida")
