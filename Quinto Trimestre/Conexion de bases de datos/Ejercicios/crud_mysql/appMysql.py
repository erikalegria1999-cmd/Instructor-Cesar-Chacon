import pymysql as mysql
import os
from dotenv import load_dotenv

load_dotenv()

user = os.getenv('user')
password=os.getenv('password')
baseDatos=os.getenv('baseDatos')
host=os.getenv('host')

miConexion=mysql.connect(
    host=host,
    user=user,
    password=password,
    database=baseDatos
    
)

cursor=miConexion.cursor()

def agregar():
    try:
        producto=(32,"Botas", 32000.00,"Calzado")
        consulta="insert into productos values(null,%s,%s,%s,%s)"
        cursor.execute(consulta,producto)
        miConexion.commit()
        if cursor.rowcount==1:
            print("Producto Agregado Correctamente")
    except miConexion.Error as e:
        miConexion.rollback()
        print(str(e))
        
def listar():
    try:
        consulta="select * from productos"
        cursor.execute(consulta)
        productos=cursor.fetchall()
        for producto in productos:
            print(producto)
            print(f"Id: {producto[0]}")
            print(f"Código: {producto[1]}")
            print(f"Nombre: {producto[2]}")
            print(f"Precio: {producto[3]}")
            print(f"Categoría: {producto[4]}")
            print(f"**************************")
    except miConexion.Error as e:
        print(str(e))
        
def consultarPorCodigo():
    try:
        codigo=int(input("Ingrese código de producto a consultar: "))
        productoAConsultar=(codigo,) 
        consulta="select * from productos where proCodigo=%s"
        cursor.execute(consulta,productoAConsultar)
        producto=cursor.fetchone()
        if producto:
            print(producto)
        else:
            print(f"No exite producto con el código {codigo}")
    except miConexion.Error as e:
        print(str(e))
    

def actualizar():
    try:
        datosActualizar=("Tennis",25000.00,1)
        consulta="update productos set proNombre=%s, proPrecio=%s where idProducto=%s"
        cursor.execute(consulta,datosActualizar)
        miConexion.commit()
        if cursor.rowcount==1:
            print("Producto Actualizado correctamente")
        else:
            print(f"No existe producto con el id {datosActualizar[2]}")
        
    except miConexion.Error as e:
        miConexion.rollback()
        print(str(e))    
def eliminar():
    try:
        productoEliminar=(3,)
        consulta="delete from productos where idProducto=%s"
        cursor.execute(consulta,productoEliminar)
        miConexion.commit()
        if cursor.rowcount==1:
            print("Producto eliminado correctamente")
        else:
             print(f"No existe producto con el id {productoEliminar[0]}")
        
    except miConexion.Error as e:
        miConexion.rollback()
        print(str(e))

agregar()
#listar()
#consultarPorCodigo()
#actualizar()
#eliminar()
