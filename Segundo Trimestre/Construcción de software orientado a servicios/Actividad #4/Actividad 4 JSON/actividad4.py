import json
import pandas as pd

archivo_json = "ventas.json"

# cargar datos
def cargar_datos():
    try:
        with open(archivo_json, "r", encoding="utf-8") as archivo:
            return json.load(archivo)
    except:
        return []

# guardar datos
def guardar_datos(datos):
    with open(archivo_json, "w", encoding="utf-8") as archivo:
        json.dump(datos, archivo, indent=4, ensure_ascii=False)

# agregar registro
def agregar_registro():
    datos = cargar_datos()

    vendedor = input("Nombre del vendedor: ")
    mes = input("Mes: ")
    ventas = float(input("Cantidad de ventas: "))

    nuevo = {
        "vendedor": vendedor,
        "mes": mes,
        "ventas": ventas
    }

    datos.append(nuevo)
    guardar_datos(datos)

    print("Registro agregado correctamente")

# reporte con pandas
def reporte_estadistico():
    datos = cargar_datos()

    df = pd.DataFrame(datos)

    print("\nDatos cargados")
    print(df)

    print("\nTotal ventas por vendedor")
    print(df.groupby("vendedor")["ventas"].sum())

    print("\nPromedio ventas por mes")
    print(df.groupby("mes")["ventas"].mean())

    # exportar CSV
    df.to_csv("reporte_ventas.csv", index=False)

    # exportar JSON
    df.to_json("reporte_ventas.json", orient="records", indent=4, force_ascii=False)

    print("\nArchivos exportados:")
    print("reporte_ventas.csv")
    print("reporte_ventas.json")

# menú
while True:

    print("\n MENU VENTAS")
    print("1. Ver datos")
    print("2. Agregar registro")
    print("3. Generar reporte estadístico")
    print("4. Salir")

    opcion = input("Seleccione una opción: ")

    if opcion == "1":
        datos = cargar_datos()
        for d in datos:
            print(d)

    elif opcion == "2":
        agregar_registro()

    elif opcion == "3":
        reporte_estadistico()

    elif opcion == "4":
        print("Programa finalizado")
        break

    else:
        print("Opción inválida")