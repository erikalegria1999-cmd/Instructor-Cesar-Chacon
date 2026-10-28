class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

p1 = Persona("Santiago", 26)

# modificar atributos
p1.edad = 27
p1.nombre = "San"

print(p1.nombre)
print(p1.edad)