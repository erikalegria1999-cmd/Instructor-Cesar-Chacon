import json

with open("listaDeportitas.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)
    print("Leído correctamente")

listaMujeres = []

for personas in datos:
    if personas["sexo"] == "Femenino":
        listaMujeres.append(personas)


with open("deportistas_mujeres.json", "w", encoding="utf-8") as archivo:
    
    json.dump(listaMujeres, archivo, indent=4, ensure_ascii=False) 
    print("Lista Creada")