# importa libreria que permite interactuar con el sistema operativo
import os 
# libreria lee las variables definidas en el .env y los carga 
from dotenv import load_dotenv
# ejecuta la funcion que ejecuta el .env
load_dotenv()

# carga de datos de la base de datos MYSQL
DB_HOST = os.getenv("DB_HOST", "localhost")
DB_PORT = int(os.getenv("DB_PORT", "3306"))
DB_USER = os.getenv("DB_USER", "root")
DB_PASSWORD = os.getenv("DB_PASSWORD","")
DB_NAME = os.getenv("DB_NAME", "tienda_adso")
