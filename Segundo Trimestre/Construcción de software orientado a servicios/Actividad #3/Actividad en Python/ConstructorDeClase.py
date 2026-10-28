class Persona:
        nombre: str = False     
        cantidad_ojos: int = False
        cantidad_manos: int = False

        def __init__(self,nombre):
# El constructor es un método especial que se ejecuta automáticamente al crear una instancia de la clase.
#  Se utiliza para inicializar los atributos del objeto con valores específicos.
                print("Esta Naciendo un nuevo ser humano")
                self.nombre = nombre
                self.cantidad_ojos = 2
                self.cantidad_manos = 2
# En este ejemplo, la clase Persona tiene un constructor definido por el método __init__. 
# El constructor toma un parámetro nombre y asigna valores predeterminados a los atributos cantidad_ojos y cantidad_manos.
#  Al crear una instancia de la clase Persona,el constructor se ejecuta automáticamente, inicializando los atributos con los valores proporcionados.
bebe = Persona("camilo")
print(bebe.nombre)
print("Cantidad de ojos:", bebe.cantidad_ojos)   
print("Cantidad de manos:", bebe.cantidad_manos)



