

def agregar_contacto():
    archivo = open("contactos.txt", "a")

    identificacion = input("Identificación: ")
    nombres = input("Nombres: ")
    apellidos = input("Apellidos: ")
    correo = input("Correo: ")
    genero = input("Género: ")

    archivo.write(identificacion + "," + nombres + "," + apellidos + "," + correo + "," + genero + "\n")
    archivo.close()

    print("Contacto guardado correctamente\n")


def mostrar_contactos():
    try:
        archivo = open("contactos.txt", "r")
        print("\n--- LISTA DE CONTACTOS ---")
        for linea in archivo:
            datos = linea.strip().split(",")
            print(f"ID: {datos[0]}")
            print(f"Nombres: {datos[1]}")
            print(f"Apellidos: {datos[2]}")
            print(f"Correo: {datos[3]}")
            print(f"Género: {datos[4]}")
            print("-------------------------")
        archivo.close()
    except FileNotFoundError:
        print("No hay contactos guardados aún.\n")


def menu():
    while True:
        print("=== MENÚ DE CONTACTOS ===")
        print("1. Agregar contacto")
        print("2. Mostrar contactos")
        print("3. Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            agregar_contacto()
        elif opcion == "2":
            mostrar_contactos()
        elif opcion == "3":
            print("Saliendo del programa...")
            break
        else:
            print("Opción inválida\n")


menu()
