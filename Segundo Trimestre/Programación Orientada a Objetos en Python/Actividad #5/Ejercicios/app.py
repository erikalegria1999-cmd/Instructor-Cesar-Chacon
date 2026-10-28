from empresa import Empresa
from vuelo import Vuelo
from pasajero import Pasajero
from datetime import datetime
import os
import pandas as pd
import json

miEmpresa = Empresa("XYZ")


def existeVuelo(numero):
    for vuelo in miEmpresa.obtenerVuelos():
        if vuelo.obtenerNumero()==numero:
            return True
    else:
        return False
    
def crearVuelo():
    os.system("cls") #limpiar pantalla
    print("CREACIÓN DE VUELO")
    try:
        numero = input("Ingrese número de vuelo: ")
        #buscar si existe un vuelo con ese código
        if not existeVuelo(numero):
            fecha = input("Ingrese fecha de vuelo (yyyy-mm-dd): ")
            fecha_obj = datetime.strptime(fecha, '%Y-%m-%d')
            hora = input("Ingrese hora de vuelo(hh:mm): ")
            hora_object = datetime.strptime(hora, "%H:%M").time()
            ciudadOrigen = input("Ingrese ciudad Origen: ")
            ciudadDestino = input("Ingrese ciudad Destino: ")
            miEmpresa.registrarVuelo(numero,fecha_obj,hora_object,ciudadOrigen,ciudadDestino)
            print("El vuelo ha sido creado de manera exitosa")
        else:
            print(f"Ya existe vuelo con el número {numero}")
    except Exception as ex:
        print(str(ex))
        
def listarVuelos():
    os.system("cls") #limpiar pantalla
    print("LISTA TOTAL DE VUELOS")
    for vuelo in miEmpresa.obtenerVuelos():
        print(vuelo)
        
def registrarPasajeroVuelo():
    os.system("cls") #limpiar pantalla
    print("REGISTRAR PASAJERO")
    numeroVuelo = input("Ingrese número de vuelo: ")
    vuelo = miEmpresa.consultarVueloPorCodigo(numeroVuelo)
    if(vuelo): #
        #pedir los datos del pasajero
        identificacion= input("Ingrese identificación del pasajero: ")
        nombres = input("Ingrese nombre del pasajero: ")
        apellidos  = input("Ingrese apellido del pasajero: ")
        correo = input("Ingrese correo del pasajero: ")
        vuelo.registrarPasajero(identificacion,nombres,apellidos,correo)
        print("Pasajero registrado de manera exitosa")
    else:
        print(f"Vuelo con el número {numeroVuelo} no existe  ")
    
def listarPasajerosVuelo():
    os.system("cls") #limpiar pantalla
    print("LISTA DE PASAJEROS DE UN VUELO")
    numeroVuelo = input("Ingrese número de vuelo: ")
    vuelo = miEmpresa.consultarVueloPorCodigo(numeroVuelo)
    if(vuelo):
        for pasajero in vuelo.obtenerPasajeros():
            print(f"Identificacion: {pasajero.obtenerIdentificacion()}")
            print(f"Nombres: {pasajero.obtenerNombres()}")
            print(f"Apellidos: {pasajero.obtenerApellidos()}")
            print(f"Correo: {pasajero.obtenerCorreo()}")
            print("*" * 50)
        else:
            print(f"En el momento el vuelo {numeroVuelo} no tiene pasajeros")
    else:
        print(f"Vuelo con el número {numeroVuelo} no existe  ")

def exportarJson():
    empresaJson = miEmpresa.__dict__
    df = pd.DataFrame(empresaJson)
    df.to_json("empresaJson.json", orient="records", indent=4)
def menu():
    while(True):
        os.system("cls") #limpiar pantalla        
        print(f"\t\tMENU EMPRESA {miEmpresa.obtenerNombre()}")
        print("\t1. Crear Vuelo")
        print("\t2. Listar Vuelos")
        print("\t3. Registrar Pasajero Vuelo")
        print("\t4. Listar Pasajeros de un Vuelo")
        print("\t5. Listar Vuelos por Fecha")
        print("\t6. Exportar a Json Vuelos")
        print("\t7. Salir")
        
        opcion = int(input("Ingrese Opción(1-6): "))
        
        match (opcion):
            case 1: crearVuelo()
            case 2: listarVuelos()
            case 3: registrarPasajeroVuelo()
            case 4: listarPasajerosVuelo()
            case 5: pass
            case 6: exportarJson()
            case 7: 
                print("Voy a salir")
                break
            case __:print("Opción fuera de rango")
        
        enter = input("Presione enter para continuar")

menu()