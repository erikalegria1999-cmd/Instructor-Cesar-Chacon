import json

# Leer archivo JSON
with open("ventas.json", "r", encoding="utf-8") as archivo:
    ventas = json.load(archivo)


def calcular_total_por_vendedor():
    total_por_vendedor = {}

    for registro in ventas:
        vendedor = registro["vendedor"]
        monto = registro["ventas"]

        if vendedor not in total_por_vendedor:
            total_por_vendedor[vendedor] = 0

        total_por_vendedor[vendedor] += monto

    print("\nTotal por vendedor:")
    print(total_por_vendedor)


def calcular_promedio_mensual():
    total_por_mes = {}

    for registro in ventas:
        mes = registro["mes"]
        monto = registro["ventas"]

        if mes not in total_por_mes:
            total_por_mes[mes] = []

        total_por_mes[mes].append(monto)

    promedio_mensual = {}

    for mes, valores in total_por_mes.items():
        promedio_mensual[mes] = sum(valores) / len(valores)

    print("\nPromedio mensual:")
    print(promedio_mensual)


def mejor_vendedor():
    total_por_vendedor = {}

    for registro in ventas:
        vendedor = registro["vendedor"]
        monto = registro["ventas"]

        if vendedor not in total_por_vendedor:
            total_por_vendedor[vendedor] = 0

        total_por_vendedor[vendedor] += monto

    mejor = max(total_por_vendedor, key=total_por_vendedor.get)

    print("\nVendedor con mayor venta:")
    print(mejor)


def generar_ranking():
    total_por_vendedor = {}

    for registro in ventas:
        vendedor = registro["vendedor"]
        monto = registro["ventas"]

        if vendedor not in total_por_vendedor:
            total_por_vendedor[vendedor] = 0

        total_por_vendedor[vendedor] += monto

    ranking = []

    for vendedor, total in total_por_vendedor.items():
        ranking.append({
            "vendedor": vendedor,
            "total_ventas": total
        })

    ranking.sort(key=lambda x: x["total_ventas"], reverse=True)

    with open("ranking_ventas.json", "w", encoding="utf-8") as archivo:
        json.dump(ranking, archivo, indent=4, ensure_ascii=False)

    print("\nRanking exportado a ranking_ventas.json")


# MENU
while True:

    print("\n MENU DE VENTAS")
    print("1. Total de ventas por vendedor")
    print("2. Promedio de ventas por mes")
    print("3. Vendedor con mayor venta")
    print("4. Generar ranking de ventas")
    print("5. Salir")

    opcion = input("Seleccione una opción: ")

    if opcion == "1":
        calcular_total_por_vendedor()

    elif opcion == "2":
        calcular_promedio_mensual()

    elif opcion == "3":
        mejor_vendedor()

    elif opcion == "4":
        generar_ranking()

    elif opcion == "5":
        print("Programa finalizado")
        break

    else:
        print("Opción no válida")