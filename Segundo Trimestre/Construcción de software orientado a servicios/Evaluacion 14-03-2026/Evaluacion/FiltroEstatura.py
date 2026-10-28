import json


with open("listaDeportitas.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)
    print("Leído correctamente")

listaEstatura = []

for personas in datos:
    if personas["estatura"] == 1.85:
        listaEstatura.append(personas)

with open("deportistas_estatura_mayor_1.85.json", "w", encoding="utf-8") as archivo:
    
    json.dump(listaEstatura, archivo, indent=4, ensure_ascii=False) 
    print("Lista Creada")
