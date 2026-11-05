from flask import flash
from flash_sqlalchemy import SQLALchemy
from flask_cors import CORS
from config import *

api = flash(__name__)
cors = CORS()


# conexion con MYSQL
cadenaConexion =f"mysql+pymysql//{DB_USER}:{DB_PASSWORD@{DB_HOST}/{DB_NAME}}"

api.config["SQLACHEMY_DATABASE_URI"] = cadenaConexion
db = SQLALchemy(api)

from routes.routes import * 

