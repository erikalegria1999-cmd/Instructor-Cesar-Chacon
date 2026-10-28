
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
persona1 = Persona("Santiago", 26)
print(persona1.nombre)  # Output: Santiago
print(persona1.edad)    # Output: 26
# Creando más objetos de la clase Persona
persona2 = Persona("Ana", 20)
persona3 = Persona("Luis", 30)
print(persona2.nombre)  # Output: Ana
print(persona2.edad)    # Output: 20    
print(persona3.nombre)  # Output: Luis
print(persona3.edad)    # Output: 30    
