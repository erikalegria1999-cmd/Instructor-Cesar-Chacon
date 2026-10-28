import pandas as pd

deportistas = pd.read_json("https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/deportistas.json")
# print(deportistas)
# print(deportistas.info())

#Filtrar Datos con pandas 
deportistas_bmx = deportistas[deportistas["deporte"]=="BMX"]
print(deportistas_bmx)

# guardar archivo jSON (.to_json)
# cuando sale errores al leerlo se le coloca:
# orient="records",
#     indent=4,
#     force_ascii=False

deportistas_bmx.to_json("deportistas_bmx.json", indent= 4,orient="records",force_ascii=False )

