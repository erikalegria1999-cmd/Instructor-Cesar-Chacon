# Atributos de clase y de instancia
class Personas:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
p1 = Personas("Santiago", 26)
p2 = Personas("Maria", 30)
print(f"Nombre: {p1.nombre}, Edad: {p1.edad}")
print(f"Nombre: {p2.nombre}, Edad: {p2.edad}")





