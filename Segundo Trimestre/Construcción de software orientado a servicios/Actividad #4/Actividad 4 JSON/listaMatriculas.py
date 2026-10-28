import pandas as pd

url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/SENA.matriculados.json"

datos = pd.read_json(url)

datos.to_json("listaMatriculados.json", orient="records", indent=4, force_ascii=False)