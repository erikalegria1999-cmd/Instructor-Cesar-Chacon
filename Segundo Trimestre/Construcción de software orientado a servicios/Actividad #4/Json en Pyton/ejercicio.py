import json 
import pandas as pd

estudiantes = [
    {"documento":11 ,"nombre":"Maria ","edad":23,"promedio":4.2,"deportes":["Minitejo", "futbol"]},
    {"documento":12 ,"nombre":"Pedro","edad":21,"promedio":3.9,"deportes":["tejo", "futbol", "tenis de mesa"]},
    {"documento":13 ,"nombre":"Sara","edad":18,"promedio":4.4, "deportes":["voleybol", "basquetbol"]}
    ]
# crea archivo JSON (json.dump)
with open("Estudiantes.json", "w" , encoding= "utf-8" ) as archivo:
    json.dump(estudiantes,archivo,indent=4)
# Como leer los datos JSON
datos = pd.read_json("Estudiantes.json")
print(datos)


# URL del archivo JSON
url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/deportistas.json"
df = pd.read_json(url)








