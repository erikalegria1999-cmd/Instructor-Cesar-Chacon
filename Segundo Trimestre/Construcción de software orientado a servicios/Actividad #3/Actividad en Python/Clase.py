class Persona():
    def __init__(self,Nombre,Edad,Sexo):
        self.Nombre = Nombre
        self.Edad = Edad
        self.Sexo = Sexo

    def imprimir(self):
        print(f"Nombre: {self.Nombre}\nEdad: {self.Edad}\nSexo: {self.Sexo}")
#  Nota : tener cuidado con las colums
santiago = Persona("Santiago", 26, "Masculino")
santiago.imprimir()