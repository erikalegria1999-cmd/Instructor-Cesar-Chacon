import csv

ventas = [
    {"ID": 1, "Producto": "Laptop Pro", "Stock": 10, "Precio": 1200.00, "Proveedor": "TechSol"},
    {"ID": 2, "Producto": "Mouse Base", "Stock": 50, "Precio": 15.00, "Proveedor": "LogiPlus"},
    {"ID": 3, "Producto": "Monitor 24", "Stock": 15, "Precio": 180.00, "Proveedor": "VisionPro"},
    {"ID": 4, "Producto": "Teclado USB", "Stock": 30, "Precio": 25.00, "Proveedor": "KeyMaster"},
    {"ID": 5, "Producto": "Silla Ofis", "Stock": 8, "Precio": 95.00, "Proveedor": "DecoHome"}
]

campos = ["ID", "Producto", "Stock", "Precio", "Proveedor"]


with open("inventario.csv", "w", newline="", encoding="utf-8") as archivo:
    
    escritor = csv.DictWriter(archivo, fieldnames=campos)
    escritor.writeheader() 
    escritor.writerows(ventas) 
    print("¡Archivo creado con éxito!")

# LEER EL ARCHIVO
print("\nContenido del archivo:")
with open("inventario.csv", "r", encoding="utf-8") as archivo:
    leer = csv.reader(archivo)
    for fila in leer:
        print(fila)

total_inventario = 0

for item in ventas:

    subtotal = item["Stock"] * item["Precio"]
    total_inventario += subtotal

print(f"El valor total del inventario es: ${total_inventario:,.2f}")













