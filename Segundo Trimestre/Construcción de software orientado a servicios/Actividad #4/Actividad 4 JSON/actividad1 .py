import json

# Leer archivo JSON
with open("productos.json", "r", encoding="utf-8") as archivo:
    productos = json.load(archivo)


def valor_inventario():
    total_inventario = 0
    print("\nValor total por producto:\n")

    for producto in productos:
        nombre = producto["producto"]
        precio = float(producto["precio"])
        cantidad = int(producto["cantidad"])

        valor_total = precio * cantidad
        total_inventario += valor_total

        print(f"{nombre}: {valor_total:.2f}")

    print("\nValor total del inventario:")
    print(f"{total_inventario:.2f}")


def generar_bajo_stock():
    bajo_stock = []

    for producto in productos:
        cantidad = int(producto["cantidad"])

        if cantidad < 5:
            bajo_stock.append(producto)

    with open("bajo_stock.json", "w", encoding="utf-8") as archivo:
        json.dump(bajo_stock, archivo, indent=4, ensure_ascii=False)

    print("\nArchivo creado con productos de bajo stock.")


def mostrar_productos():
    print("\nLista de productos:\n")
    for producto in productos:
        print(producto["producto"], "-", producto["cantidad"], "unidades")


# MENÚ
while True:

    print("\nMENÚ INVENTARIO")
    print("1. Mostrar productos")
    print("2. Calcular valor del inventario")
    print("3. Generar archivo de bajo stock")
    print("4. Salir")

    opcion = input("Seleccione una opción: ")

    if opcion == "1":
        mostrar_productos()

    elif opcion == "2":
        valor_inventario()

    elif opcion == "3":
        generar_bajo_stock()

    elif opcion == "4":
        print("Programa finalizado")
        break

    else:
        print("Opción no válida")
