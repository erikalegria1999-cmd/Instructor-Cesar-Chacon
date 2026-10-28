import pandas as pd

url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/deportistas.json"

df = pd.read_json(url)

df.to_json("listaDeportitas.json",orient="records",indent=4, force_ascii=False)




