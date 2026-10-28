import json

with open("listaMatriculados.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)
#filtramos los datos 

listaAdso = []  #lista donde guardamos
for persona in datos:
    if "SOFTWARE" in persona["PROGRAMA"]:
        listaAdso.append(persona)

#creamos el nuevo archivo 
with open("filtroAdso.json","w", encoding= " utf-8") as archivo:
    json.dump(listaAdso,archivo,indent=4,ensure_ascii=False)
    print("Archivo creado por fin -.- ")


        