import pandas as pd

# Leer archivo

estudiantes = pd.read_csv("estudiantes.csv", encoding="utf-8")

estudiantes["sexo"] = estudiantes["sexo"].astype(str).str.strip().str.capitalize()

def menu():
    while True:
        print("\nMENÚ DE OPCIONES")
        print("1. Mostrar los primeros 10 registros")
        print("2. Mostrar estudiantes con promedio superior a 4.2")
        print("3. Mostrar estudiantes por sexo y edad mayor o igual a 21")
        print("4. Mostrar promedio del promedio por sexo")
        print("5. Mostrar estudiantes de mayor edad")
        print("6. Mostrar estudiantes con edad = 20 o promedio > 4.5")
        print("7. Generar archivo de rendimiento.csv")
        print("8. Salir")

        opcion = input("Seleccione una opción: ").strip()

        if opcion == "1":
            print(estudiantes.head(10))

        elif opcion == "2":
            print(estudiantes[estudiantes["promedio"] > 4.2])

        elif opcion == "3":
            sexo_input = input("Ingrese sexo (M/F o Masculino/Femenino): ").strip().lower()

            if sexo_input in ["m", "masculino"]:
                sexo = "Masculino"
            elif sexo_input in ["f", "femenino"]:
                sexo = "Femenino"
            else:
                print("Sexo inválido")
                continue

            resultado = estudiantes[
                (estudiantes["sexo"] == sexo) &
                (estudiantes["edad"] >= 21)
            ]

            if resultado.empty:
                print("No se encontraron estudiantes con esos criterios.")
            else:
                print(resultado)

        elif opcion == "4":
            sexo_input = input("Ingrese sexo (M/F o Masculino/Femenino): ").strip().lower()

            if sexo_input in ["m", "masculino"]:
                sexo = "Masculino"
            elif sexo_input in ["f", "femenino"]:
                sexo = "Femenino"
            else:
                print("Sexo inválido")
                continue

            promedio = estudiantes[
                estudiantes["sexo"] == sexo
            ]["promedio"].mean()

            print(f"El promedio del promedio para {sexo} es: {promedio:.2f}")

        elif opcion == "5":
            mayor = estudiantes[estudiantes["edad"] == estudiantes["edad"].max()]
            print(mayor)

        elif opcion == "6":
            print(estudiantes[
                (estudiantes["edad"] == 20) |
                (estudiantes["promedio"] > 4.5)
            ])

        elif opcion == "7":
            alto = estudiantes[estudiantes["promedio"] > 4.5]
            alto.to_csv("alto_rendimiento.csv", index=False)
            print("Archivo alto_rendimiento.csv generado correctamente.")

        elif opcion == "8":
            print("Saliendo del programa...")
            break

        else:
            print("Opción no válida.")

menu()