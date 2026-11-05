# Importamos lo que necesitamos para usar los puertos
from flask import request, jsonify
from app import api, db
from models.producto import Producto
from sqlalchemy import exc 

# Método POST
@api.route("/api/v1/productos/", methods=['POST'])
def crearProducto():
    try:
        datos = request.get_json(force=True)
        
        # Creamos la instancia con los datos recibidos
        producto = Producto(**datos)
        
        # Agregamos la INSTANCIA (en minúscula) a la base de datos
        db.session.add(producto)
        db.session.commit()
        
        status = 201
        return jsonify({
            "mensaje": "Producto agregado correctamente", 
            "producto": producto.to_dict()
        }), status

    except exc.SQLAlchemyError as error:
        db.session.rollback()  # Buena práctica para revertir cambios si falla
        mensaje = str(error)
        status = 400
        return jsonify({"mensaje": mensaje}), status

# Método GET (Todos)
@api.route("/api/v1/productos/", methods=["GET"])
def obtenerProductos():
    try:
        productos = Producto.query.all()
        listaProductos = [p.to_dict() for p in productos] # Opcional: usando list comprehension
            
        return jsonify({
            "mensaje": "productos",
            "producto": listaProductos
        }), 200

    except exc.SQLAlchemyError as error:
        mensaje = str(error)
        return jsonify({"mensaje": mensaje}), 500

# Método GET por ID
@api.route("/api/v1/productos/<int:idProducto>", methods=["GET"])
def obtenerProductoPorID(idProducto):
    try:
        producto = Producto.query.get(idProducto)
        
        if producto is None:
            return jsonify({
                "mensaje": "No existe producto con ese ID"
            }), 404
        else:
            return jsonify({
                "mensaje": "Producto encontrado",
                "producto": producto.to_dict()
            }), 200

    except exc.SQLAlchemyError as error:
        mensaje = str(error)
        return jsonify({"mensaje": mensaje}), 500

# Método DELETE
@api.route("/api/v1/productos/<int:idProducto>", methods=["DELETE"])
def eliminarProducto(idProducto):  # <--- ¡Faltaba declarar la función aquí!
    try:
        producto = Producto.query.get(idProducto)
        
        if producto is None:
            return jsonify({
                "mensaje": "No existe producto con ese ID"
            }), 404
        else: 
            db.session.delete(producto)
            db.session.commit()
            return jsonify({
                "mensaje": "Producto eliminado correctamente"
            }), 200  # <--- Cambiado a 200 (éxito), antes tenías 500

    except exc.SQLAlchemyError as error:
        db.session.rollback()
        mensaje = str(error)
        return jsonify({"mensaje": mensaje}), 500