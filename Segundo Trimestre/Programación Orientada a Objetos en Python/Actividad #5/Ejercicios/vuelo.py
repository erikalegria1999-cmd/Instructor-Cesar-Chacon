from pasajero import Pasajero

class Vuelo():
    
    def __init__(self, numero=None, fecha=None,hora=None,ciudadOrigen=None, ciudadDestino=None):
        self.__numero=numero
        self.__fecha=fecha
        self.__hora=hora
        self.__ciudadOrigen=ciudadOrigen
        self.__ciudadDestino=ciudadDestino
        self.__pasajeros=[]
        
        
    def obtenerNumero(self):
        return self.__numero
    
    def obtenerFecha(self):
        return self.__fecha
    
    def obtenerHora(self):
        return self.__hora
    
    def obtenerCiudadOrigen(self):
        return self.__ciudadOrigen
    
    def obtenerCiudadDestino(self):
        return self.__ciudadDestino
    
    def obtenerPasajeros(self):
        return self.__pasajeros
    
    
    def registrarPasajero(self, identificacion, nombres, apellidos,correo):
        #crear el pasajero
        nuevoPasajero = Pasajero(identificacion, nombres,apellidos,correo)
        #agregar pasajero a la lista
        self.__pasajeros.append(nuevoPasajero)
        
    def listarPasajerosVuelo(self,numero):
        if self.__numero==numero:
            return self.__pasajeros
        
    def __str__(self):
        return f"{self.__numero} - {self.__fecha} - {self.__hora}"