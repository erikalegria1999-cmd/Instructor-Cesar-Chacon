import json

datos_electorales = [
    {"Departamento": "Cauca", "Cantidad_Votantes_Hombres": 1200, "Cantidad_Votantes_Mujeres": 2400},
    {"Departamento": "Huila", "Cantidad_Votantes_Hombres": 4900, "Cantidad_Votantes_Mujeres": 3950},
    {"Departamento": "Antioquia", "Cantidad_Votantes_Hombres": 45000, "Cantidad_Votantes_Mujeres": 48000},
    {"Departamento": "Valle", "Cantidad_Votantes_Hombres": 32000, "Cantidad_Votantes_Mujeres": 31000},
    {"Departamento": "Nariño", "Cantidad_Votantes_Hombres": 15000, "Cantidad_Votantes_Mujeres": 18500},
    {"Departamento": "Santander", "Cantidad_Votantes_Hombres": 22000, "Cantidad_Votantes_Mujeres": 21500},
    {"Departamento": "Atlántico", "Cantidad_Votantes_Hombres": 25000, "Cantidad_Votantes_Mujeres": 29000},
    {"Departamento": "Tolima", "Cantidad_Votantes_Hombres": 14000, "Cantidad_Votantes_Mujeres": 13500},
    {"Departamento": "Chocó", "Cantidad_Votantes_Hombres": 8000, "Cantidad_Votantes_Mujeres": 9500},
    {"Departamento": "Caldas", "Cantidad_Votantes_Hombres": 11000, "Cantidad_Votantes_Mujeres": 12000}
]

with open("elecciones.json", "w", encoding="utf-8") as f:
    json.dump(datos_electorales, f, indent=4, ensure_ascii=False)

with open("elecciones.json", "r", encoding="utf-8") as f:
    datos_cargados = json.load(f)
resultados_mujeres = []
for dep in datos_cargados:
    hombres = dep["Cantidad_Votantes_Hombres"]
    mujeres = dep["Cantidad_Votantes_Mujeres"]
    
    if mujeres > hombres:
        total = hombres + mujeres
        # Calculamos porcentajes redondeados a 2 decimales
        porcentaje_h = round(hombres / total, 2)
        porcentaje_m = round(mujeres / total, 2)
        
        # Creamos el nuevo diccionario con la estructura solicitada
        nuevo_registro = {
            "Departamento": dep["Departamento"],
            "Cantidad_Votantes_Hombres": hombres,
            "Cantidad_Votantes_Mujeres": mujeres,
            "Total_Votantes": total,
            "Porcentaje_Hombres": porcentaje_h,
            "Porcentaje_Mujeres": porcentaje_m
        }
        resultados_mujeres.append(nuevo_registro)

with open("mayoría_mujeres_departamento.json", "w", encoding="utf-8") as f:
    json.dump(resultados_mujeres, f, indent=4, ensure_ascii=False)

print("Proceso completado. Se han generado ambos archivos JSON.")