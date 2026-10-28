class Persona:
    def __init__(self, nombre):
        self.nombre = nombre

    def saludar(self):
        print(f"Hola, mi nombre es {self.nombre}")
persona1 = Persona("Santiago")
persona1.saludar()  