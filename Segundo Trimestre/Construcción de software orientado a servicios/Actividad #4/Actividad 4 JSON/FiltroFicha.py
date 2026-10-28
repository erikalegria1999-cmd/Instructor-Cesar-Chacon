import json

with open("filtroAdso.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)

miFicha = []

for ficha in datos:
    if ficha["FICHA"] == 3312932:
        miFicha.append(ficha)

with open("ficha_3312932.json","w", encoding= "utf-8") as archivo:
    json.dump(miFicha,archivo ,indent=4,ensure_ascii=False)
    print("Ficha creada :D")