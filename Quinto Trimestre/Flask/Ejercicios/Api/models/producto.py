# importamos la instancia de la base de datos desde el archivo o modulo principal(app)
from app import db

# define una clase llmada productos que hereda db.model que indica que se conectara con la tabla productos
class Producto(db.model):
    __tablaname = "productos"
# definimos los datos en las columnas y sus atributos
idProducto = db.column(db.Integer,primary_key= True, autoincrement=True,)
proCodigo= db.column(db.string(30), nullable= False, unique = True, )
proNombre= db.column(db.string(100), nullabel= False)
ProPrecio = db.column(db.Float, nullable = False,)
proCategoria = db.column(db.string(50), nullable = False)
def to_dict(self):
        return{
            "idProducto": self.idProducto,
            "proCodigo" : self.proCodigo,
            "proNombre" : self.proNombre,
            "proPrecio" : self.proPrecio,
            "proCategoria": self.proCategoria
        }
