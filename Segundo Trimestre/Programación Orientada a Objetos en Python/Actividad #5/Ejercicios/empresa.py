from vuelo import Vuelo

class Empresa():
    
    def __init__(self, nombre):
        self.__nombre=nombre
        self.__vuelos=[]
        
    def obtenerNombre(self):
        return self.__nombre
    
    def modificarNombre(self,nombre):
        self.__nombre=nombre
        
    def obtenerVuelos(self):
        return self.__vuelos
        
    def registrarVuelo(self, numero, fecha,hora,ciudadOrigen, ciudadDestino):
        #crear el vuelo
        vuelo = Vuelo(numero,fecha,hora, ciudadOrigen,ciudadDestino)
        #agregar vuelo a l alista de vuelos
        self.__vuelos.append(vuelo)
        
    def listarVuelosFecha(self,fecha):
        lista=[]
        for vuelo in self.obtenerVuelos():
            if vuelo.obtenerFecha()==fecha:
                lista.append(vuelo)
                
        return lista
    
    def consultarVueloPorCodigo(self,numero):
        for vuelo in self.obtenerVuelos(): 
            if vuelo.obtenerNumero()==numero:
                return vuelo
        else:
            return None