class Pasajero():
    
    def __init__(self,identificacion=None,nombres=None,apellidos=None,correo=None):
        self.__identificacion=identificacion
        self.__nombres=nombres
        self.__apellidos=apellidos
        self.__correo=correo
        
    def obtenerIdentificacion(self):
        return self.__identificacion
    
    def modificarIdentificacion(self,identifiacion):
        self.__identificacion=identifiacion
        
    def obtenerNombres(self):
        return self.__nombres
    
    def modificarNombres(self,nombres):
        self.__nombres=nombres
        
    def obtenerApellidos(self):
        return self.__apellidos
    
    def modificarApellidos(self,apellidos):
        self.__apellidos=apellidos
        
    def obtenerCorreo(self):
        return self.__correo
    
    def modificarCorreo(self,correo):
        self.__correo=correo
    
        
    