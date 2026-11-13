from flask import request, jsonify
from app import api, db
from models.producto import Producto # Ajusta esta ruta según el nombre de tu archivo de modelo

# CONSULTAR TODOS LOS PRODUCTOS
@api.route('/api/v1/productos', methods=['GET'])
def listar_productos():
    try:
        productos = Producto.query.all()
        lista = []
        for p in productos:
            lista.append({
                "idProducto": p.idProducto,
                "proCodigo": p.proCodigo,
                "proNombre": p.proNombre,
                "proPrecio": float(p.proPrecio),
                "proCategoria": p.proCategoria
            })
        return jsonify(lista), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# REGISTRAR UN PRODUCTO
@api.route('/api/v1/productos', methods=['POST'])
def registrar_producto():
    try:
        datos = request.get_json()
        nuevo = Producto(
            proCodigo=datos.get('proCodigo'),
            proNombre=datos.get('proNombre'),
            proPrecio=datos.get('proPrecio'),
            proCategoria=datos.get('proCategoria')
        )
        db.session.add(nuevo)
        db.session.commit()
        return jsonify({"mensaje": "Producto registrado correctamente"}), 201
    except Exception as e:
        db.session.rollback()
        return jsonify({"error": str(e)}), 400

# ACTUALIZAR UN PRODUCTO
@api.route('/api/v1/productos/<int:id>', methods=['PUT'])
def actualizar_producto(id):
    try:
        producto = Producto.query.get(id)
        if not producto:
            return jsonify({"error": "Producto no encontrado"}), 404
        
        datos = request.get_json()
        producto.proCodigo = datos.get('proCodigo', producto.proCodigo)
        producto.proNombre = datos.get('proNombre', producto.proNombre)
        producto.proPrecio = datos.get('proPrecio', producto.proPrecio)
        producto.proCategoria = datos.get('proCategoria', producto.proCategoria)
        
        db.session.commit()
        return jsonify({"mensaje": "Producto actualizado correctamente"}), 200
    except Exception as e:
        db.session.rollback()
        return jsonify({"error": str(e)}), 400

# ELIMINAR UN PRODUCTO
@api.route('/api/v1/productos/<int:id>', methods=['DELETE'])
def eliminar_producto(id):
    try:
        producto = Producto.query.get(id)
        if not producto:
            return jsonify({"error": "Producto no encontrado"}), 404
        
        db.session.delete(producto)
        db.session.commit()
        return jsonify({"mensaje": "Producto eliminado correctamente"}), 200
    except Exception as e:
        db.session.rollback()
        return jsonify({"error": str(e)}), 400