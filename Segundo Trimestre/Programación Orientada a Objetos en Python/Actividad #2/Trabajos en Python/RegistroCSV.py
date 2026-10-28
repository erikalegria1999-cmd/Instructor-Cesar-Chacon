import csv

# Crear archivo y registrar estudiantes
def crear_y_registrar():
    estudiantes = []

    print("=== REGISTRO DE 5 ESTUDIANTES ===")
    for i in range(5):
        print(f"\nEstudiante {i+1}")
        nombre = input("Nombre: ")
        edad = input("Edad: ")
        sexo = input("Sexo: ")
        programa = input("Programa: ")
        promedio = float(input("Promedio: "))

        estudiantes.append([nombre, edad, sexo, programa, promedio])

    with open("estudiantes.csv", "+a", newline="", encoding="utf-8") as archivo:
        writer = csv.writer(archivo)
        writer.writerow(["nombre", "edad", "sexo", "programa", "promedio"])
        writer.writerows(estudiantes)

    print("\nArchivo creado y estudiantes guardados correctamente.\n")


# Leer y mostrar datos
def mostrar_datos():
    try:
        with open("estudiantes.csv", "r", encoding="utf-8") as archivo:
            reader = csv.DictReader(archivo)
            print("\n--- LISTA DE ESTUDIANTES ---")
            for fila in reader:
                print(f"Nombre: {fila['nombre']}")
                print(f"Edad: {fila['edad']}")
                print(f"Sexo: {fila['sexo']}")
                print(f"Programa: {fila['programa']}")
                print(f"Promedio: {fila['promedio']}")
                print("-------------------------")
    except FileNotFoundError:
        print("No existe el archivo.\n")


# Calcular promedio general
def promedio_general():
    try:
        total = 0
        contador = 0

        with open("estudiantes.csv", "r", encoding="utf-8") as archivo:
            reader = csv.DictReader(archivo)
            for fila in reader:
                total += float(fila["promedio"])
                contador += 1

        if contador > 0:
            print(f"\nPromedio general del grupo: {total/contador:.2f}\n")
        else:
            print("No hay estudiantes registrados.\n")

    except FileNotFoundError:
        print("No existe el archivo.\n")


#  Mostrar estudiantes con promedio > 4.0
def estudiantes_mayor_4():
    try:
        with open("estudiantes.csv", "r", encoding="utf-8") as archivo:
            reader = csv.DictReader(archivo)
            print("\n--- ESTUDIANTES CON PROMEDIO MAYOR A 4.0 ---")
            for fila in reader:
                if float(fila["promedio"]) > 4.0:
                    print(f"{fila['nombre']} - Promedio: {fila['promedio']}")
    except FileNotFoundError:
        print("No existe el archivo.\n")


#  Ejecutar todo
def menu():
    while True:
        print("=== MENÚ ===")
        print("1. Crear archivo y registrar 5 estudiantes")
        print("2. Mostrar estudiantes")
        print("3. Promedio general")
        print("4. Estudiantes con promedio mayor a 4.0")
        print("5. Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            crear_y_registrar()
        elif opcion == "2":
            mostrar_datos()
        elif opcion == "3":
            promedio_general()
        elif opcion == "4":
            estudiantes_mayor_4()
        elif opcion == "5":
            print("Saliendo...")
            break
        else:
            print("Opción inválida\n")


menu()
