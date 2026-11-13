from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
from config import *

# Se crea el objeto de tipo Flask
api = Flask(__name__)

# Se habilita CORS de forma explícita para todos los orígenes y métodos
CORS(api, resources={r"/api/*": {"origins": "*"}})

# Cadena de conexión a MySQL
cadenaConexion = f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}/{DB_NAME}"
api.config['SQLALCHEMY_DATABASE_URI'] = cadenaConexion
api.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Se inicializa SQLAlchemy asociado a la aplicación Flask
db = SQLAlchemy(api)

# Importar las rutas (se importa después de crear 'db' y 'api')
from router.routes import *

if __name__ == '__main__':
    with api.app_context():
        db.create_all()
    
    # Ejecuta el servidor en el puerto 5000 en modo depuración
    api.run(host="127.0.0.1", port=5000, debug=True)