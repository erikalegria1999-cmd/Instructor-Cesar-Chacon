# clase Autor
class Autor():
    def __init__(self,nombre,nacionalidad):
        self.__nombre=nombre                     
        self.__nacionalidad=nacionalidad  

        # Encapsulamiento       
    def obtenerNombre(self):
        return self.__nombre                      
    def obtenerNacionalidad(self):                
        return self.__nacionalidad
    def modificarNombre(self,nombre):
        self.__nombre=nombre                      
    def modificarNacionalidad(self,nacionalidad): 
        self.__nacionalidad=nacionalidad

#Clase libro        
class Libro():
    def __init__(self,titulo,genero,autor):
        self.titulo=titulo
        self.genero=genero
        self.autor=autor
# Clase Biblioteca            
class Biblioteca():
    def __init__(self,nombre):
        self.nombre=nombre
        self.libros=[]
    def registrarLibro(self,libro):
        self.libros.append(libro)
#Clase Usuario   
class Usuario():
    def __init__(self,identificacion,nombre,correo):
        self.identificacion=identificacion
        self.nombre=nombre
        self.correo=correo
# creamos un saludar
    def saludar(self):
        print(f"Desde Usuario. Hola Soy un Objeto de tipo: {type(set).__name__}")


#Clase Estudiante       
class Estudiante(Usuario):
    def __init__(self,icfes, identificacion, nombre, correo):
        super().__init__(identificacion, nombre, correo)
        self.icfes=icfes
# se crea un saludo para Estudiantes
    def saludar(self):
        print(f"Desde Estudiante. Hola Soy un Objeto de tipo: {type(set).__name__}")
#Clase Docente
class Docente(Usuario):
    def __init__(self, especialidad,identificacion, nombre, correo):
        super().__init__(identificacion, nombre, correo)
        self.especialidad=especialidad
# se crea un saludo para el Docente
    def saludar(self):
        print(f"Desde Docente. Hola Soy un objeto de tipo: {type(self).__name__}")
# Clase Prestamo
class Prestamo():
    def __init__(self,fechaPrestamo,fechaDevolucion):
        self.fechaPrestamo=fechaPrestamo
        self.fechaDevolucion=fechaDevolucion
        self.usuario=None
        self.librosPrestamos=[]
        # self.usuario=usuario
        
    def registrarPrestamo(self,libro,usuario):
        self.usuario=usuario
        self.librosPrestamos.append(libro)
                                                                                        











