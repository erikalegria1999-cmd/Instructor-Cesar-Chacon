import json


with open("listaDeportitas.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)
    print("Leído correctamente")

listaFiltrada = []

for personas in datos:
    # Verificamos ambas condiciones
    if personas["deporte"] == "Ciclismo de ruta" and 28 <= personas["edad"] <= 35:
        listaFiltrada.append(personas)
        

with open("deportistas_ciclismo_ruta.json", "w", encoding="utf-8") as archivo:
    json.dump(listaFiltrada, archivo, indent=4, ensure_ascii=False) 
    print(f"Lista Creada con {len(listaFiltrada)} registros que cumplen los criterios.")
