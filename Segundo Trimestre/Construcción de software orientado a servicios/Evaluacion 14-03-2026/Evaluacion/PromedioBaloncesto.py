
import json

with open("listaDeportitas.json", "r", encoding="utf-8") as archivo:
    datos = json.load(archivo)

suma_edades = 0
contador_mujeres_baloncesto = 0

for persona in datos:
    if persona["sexo"] == "Femenino" and persona["deporte"] == "Baloncesto":
        suma_edades += persona["edad"]
        contador_mujeres_baloncesto += 1

if contador_mujeres_baloncesto > 0:
    promedio = suma_edades / contador_mujeres_baloncesto
    print(f"Resultados para Mujeres en Baloncesto:")
    print(f"- Cantidad encontrada: {contador_mujeres_baloncesto}")
    print(f"- Promedio de edad: {promedio:.2f} años")
else:
    print("No se encontraron mujeres que practiquen Baloncesto.")