import pandas as pd

def leer_archivo():
    try:
        df = pd.read_csv("estudiantes.csv", encoding="utf-8")
        print("\nArchivo cargado correctamente.")
        return df
    except FileNotFoundError:
        print("No se encontró el archivo estudiantes.csv")
        return None


def mostrar_primeros_10(df):
    print("\n--- Primeros 10 registros ---")
    print(df.head(10))


def promedio_superior_42(df):
    print("\n--- Estudiantes con promedio superior a 4.2 ---")
    resultado = df[df["promedio"] > 4.2]
    print(resultado)


def estudiantes_por_sexo_y_edad(df):
    sexo = input("Ingrese el sexo (ej: masculino/femenina): ")
    print("\n--- Estudiantes con edad mayor a 21 y sexo", sexo, "---")
    resultado = df[(df["sexo"] == sexo) & (df["edad"] > 21)]
    print(resultado)


def promedio_por_sexo(df):
    sexo = input("Ingrese el sexo (ej: masculino/femenina): ")
    promedio = df[df["sexo"] == sexo]["promedio"].mean()
    
    if pd.isna(promedio):
        print("No hay estudiantes de ese sexo.")
    else:
        print(f"\nPromedio del promedio para sexo {sexo}: {promedio:.2f}")


def estudiante_mayor_edad(df):
    print("\n--- Estudiante(s) de mayor edad ---")
    max_edad = df["edad"].max()
    resultado = df[df["edad"] == max_edad]
    print(resultado)


def edad_20_o_promedio_45(df):
    print("\n--- Estudiantes con edad = 20 o promedio > 4.5 ---")
    resultado = df[(df["edad"] == 20) | (df["promedio"] > 4.5)]
    print(resultado)


def generar_alto_rendimiento(df):
    alto = df[df["promedio"] > 4.5]
    alto.to_csv("alto_rendimiento.csv", index=False)
    print("\nArchivo 'alto_rendimiento.csv' generado correctamente.")


def menu():
    df = leer_archivo()
    if df is None:
        return
    
    while True:
        print("\n========== MENÚ ==========")
        print("1. Mostrar primeros 10 registros")
        print("2. Mostrar estudiantes con promedio > 4.2")
        print("3. Mostrar estudiantes por sexo y edad > 21")
        print("4. Mostrar promedio del promedio por sexo")
        print("5. Mostrar estudiante de mayor edad")
        print("6. Mostrar estudiantes con edad = 20 o promedio > 4.5")
        print("7. Generar archivo alto_rendimiento.csv")
        print("8. Salir")
        
        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            mostrar_primeros_10(df)
        elif opcion == "2":
            promedio_superior_42(df)
        elif opcion == "3":
            estudiantes_por_sexo_y_edad(df)
        elif opcion == "4":
            promedio_por_sexo(df)
        elif opcion == "5":
            estudiante_mayor_edad(df)
        elif opcion == "6":
            edad_20_o_promedio_45(df)
        elif opcion == "7":
            generar_alto_rendimiento(df)
        elif opcion == "8":
            print("Saliendo del programa...")
            break
        else:
            print("Opción inválida. Intente nuevamente.")


if __name__ == "__main__":
    menu()
