import json

with open("listaDeportitas.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)

mayor_edad = -1
deportista_mayor = None

for persona in datos:
    if persona["sexo"] == "Masculino":
        if persona["edad"] > mayor_edad:
            mayor_edad = persona["edad"]
            deportista_mayor = persona


if deportista_mayor:
    print("--- Deportista Masculino de Mayor Edad ---")
    for llave, valor in deportista_mayor.items():
        print(f"{llave}: {valor}")
else:
    print("No se encontraron deportistas del sexo masculino.")