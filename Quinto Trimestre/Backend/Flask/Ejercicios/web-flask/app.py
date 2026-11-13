from flask import Flask, request, render_template

app = Flask(__name__)

# Cambiamos el nombre de la variable para que no choque con la función
lista_productos = []

@app.route("/")
def home():
    return render_template("index.html", usuario="santiago")

@app.route("/saludo/<string:nombre>")
def saludar(nombre):
    return f"Bienvenido {nombre}"

@app.route("/producto/<nombreProducto>")
def datosProducto(nombreProducto):
    codigo = request.args.get("codigo")
    categoria = request.args.get("categoria")
    return f"Nombre producto: {nombreProducto}, tiene código: {codigo} y categoría: {categoria}"

@app.route("/tabla")
def mostrarTabla():
    # Usamos lista_productos aquí
    return render_template("tabla.html", productos=lista_productos)

@app.route("/productos", methods=["GET", "POST"])
def productos():  # Esta es la función de la ruta
    if request.method == "GET":
        return render_template("frmProducto.html")
    else: 
        codigo = request.form["txtCodigo"]
        nombre = request.form["txtNombre"]
        precio = request.form["txtPrecio"]

        # Agregamos a la lista global corregida
        lista_productos.append([codigo, nombre, precio])
        return render_template("tabla.html", productos=lista_productos)

if __name__ == '__main__':
    app.run(port=5000, debug=True)