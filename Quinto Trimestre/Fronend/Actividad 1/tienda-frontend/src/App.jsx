import { useCallback, useEffect, useState } from "react";
import Swal from 'sweetalert2';

const API_URL = "http://127.0.0.1:5000/api/v1/productos";

const formularioInicial = {
  proCodigo: "",
  proNombre: "",
  proPrecio: "",
  proCategoria: "",
};

const App = () => {
  const [productos, setProductos] = useState([]);
  const [formulario, setFormulario] = useState(formularioInicial);
  const [idEdicion, setIdEdicion] = useState(null);
  const [mensaje, setMensaje] = useState("");
  const [error, setError] = useState("");
  const [cargando, setCargando] = useState(false);

  // CONSULTAR PRODUCTOS
  const cargarProductos = useCallback(async () => {
    setCargando(true);
    setError("");
    try {
      const respuesta = await fetch(API_URL);
      const texto = await respuesta.text();
      const datos = texto ? JSON.parse(texto) : [];
      
      if (!respuesta.ok) {
        throw new Error(datos.mensaje || datos.error || "No fue posible consultar los productos.");
      }
      
      setProductos(Array.isArray(datos) ? datos : (datos.productos || []));
    } catch (err) {
      setError(err.message || "No se pudo conectar con la API.");
    } finally {
      setCargando(false);
    }
  }, []);

  useEffect(() => {
    cargarProductos();
  }, [cargarProductos]);

  // MANEJAR CAMPOS DEL FORMULARIO
  function manejarCambio(e) {
    const { name, value } = e.target;
    setFormulario((anterior) => ({
      ...anterior,
      [name]: value,
    }));
  }

  // LIMPIAR FORMULARIO
  function limpiarFormulario() {
    setFormulario(formularioInicial);
    setIdEdicion(null);
  }

  // REGISTRAR O ACTUALIZAR PRODUCTO
  async function guardarProducto(e) {
    e.preventDefault();
    setMensaje("");
    setError("");

    const datos = {
      proCodigo: formulario.proCodigo.trim(),
      proNombre: formulario.proNombre.trim(),
      proPrecio: Number(formulario.proPrecio),
      proCategoria: formulario.proCategoria.trim(),
    };

    if (
      !datos.proCodigo ||
      !datos.proNombre ||
      !datos.proCategoria ||
      formulario.proPrecio === "" ||
      !Number.isFinite(datos.proPrecio) ||
      datos.proPrecio < 0
    ) {
      setError("Complete todos los campos y verifique que el precio sea válido.");
      return;
    }

    const editando = idEdicion !== null;

    try {
      const respuesta = await fetch(
        editando ? `${API_URL}/${idEdicion}` : API_URL,
        {
          method: editando ? "PUT" : "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(datos),
        }
      );

      const textoRespuesta = await respuesta.text();
      const resultado = textoRespuesta ? JSON.parse(textoRespuesta) : null;

      if (!respuesta.ok) {
        throw new Error(resultado?.error || resultado?.mensaje || "No fue posible guardar el producto.");
      }

      Swal.fire({
        title: 'Tienda_ADSO',
        text: editando ? 'Producto actualizado correctamente' : 'Producto registrado correctamente',
        icon: 'success',
        timer: 2000,
        showConfirmButton: false
      });

      setMensaje(
        editando
          ? "Producto actualizado correctamente."
          : "Producto registrado correctamente."
      );

      limpiarFormulario();
      await cargarProductos();
    } catch (err) {
      setError(err.message || "Error de comunicación con la API.");
    }
  }

  // CARGAR PRODUCTO EN EL FORMULARIO DE EDICIÓN
  function editarProducto(producto) {
    setIdEdicion(producto.idProducto);
    setFormulario({
      proCodigo: producto.proCodigo,
      proNombre: producto.proNombre,
      proPrecio: producto.proPrecio,
      proCategoria: producto.proCategoria,
    });
    setMensaje("");
    setError("");
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  }

  // ELIMINAR PRODUCTO
  async function eliminarProducto(producto) {
    Swal.fire({
      title: "¿Eliminar Producto?",
      text: "Está seguro de Eliminar el Producto",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      cancelButtonText: "NO",
      confirmButtonText: "SI"
    }).then(async (result) => {
      if (result.isConfirmed) {
        try {
          const respuesta = await fetch(`${API_URL}/${producto.idProducto}`, {
            method: "DELETE"
          });

          if (!respuesta.ok) {
            const textoRespuesta = await respuesta.text();
            const resultado = textoRespuesta ? JSON.parse(textoRespuesta) : null;
            throw new Error(resultado?.error || "No fue posible eliminar el producto.");
          } else {
            Swal.fire('Tienda_ADSO', 'Producto Eliminado', 'success');
          }

          if (idEdicion === producto.idProducto) {
            limpiarFormulario();
          }
          setMensaje("Producto eliminado correctamente.");
          await cargarProductos();
        } catch (err) {
          setError(err.message || "Error de comunicación con la API.");
        }
      } else {
        setMensaje("");
        setError("");
      }
    });
  }

  return (
    <main className="container my-4">
      <header className="mb-4">
        <h1 className="text-center">Gestión de productos Tienda-Adso</h1>
        <p className="text-center text-muted">API Flask + MySQL + React</p>
      </header>

      <section className="card p-4 shadow-sm mb-4">
        <h2 className="h4 mb-3">
          {idEdicion !== null ? `Editar producto #${idEdicion}` : "Registrar producto"}
        </h2>
        
        <form onSubmit={guardarProducto} className="w-100">
          <div className="mb-3">
            <label className="fw-bold" htmlFor="proCodigo">Código</label>
            <input 
              id="proCodigo" 
              name="proCodigo" 
              value={formulario.proCodigo}
              onChange={manejarCambio} 
              maxLength={30} 
              className="form-control"
              required 
            />
          </div>

          <div className="mb-3">
            <label className="fw-bold" htmlFor="proNombre">Nombre</label>
            <input 
              id="proNombre" 
              name="proNombre" 
              value={formulario.proNombre}
              onChange={manejarCambio} 
              maxLength={100} 
              className="form-control"
              required 
            />
          </div>

          <div className="mb-3">
            <label className="fw-bold" htmlFor="proPrecio">Precio</label>
            <input 
              id="proPrecio" 
              name="proPrecio" 
              type="number" 
              min="0" 
              step="0.01" 
              value={formulario.proPrecio}
              onChange={manejarCambio} 
              className="form-control" 
              required 
            />
          </div>

          <div className="mb-3">
            <label className="fw-bold" htmlFor="proCategoria">Categoría</label>
            <input 
              id="proCategoria" 
              name="proCategoria"
              value={formulario.proCategoria} 
              onChange={manejarCambio}
              maxLength={50} 
              className="form-control" 
              required 
            />
          </div>

          <div className="mt-3">
            <button type="submit" className="btn btn-secondary">
              {idEdicion !== null ? "Guardar cambios" : "Registrar producto"}
            </button>
            {idEdicion !== null && (
              <button
                type="button" 
                className="btn btn-info ms-2 text-white"
                onClick={limpiarFormulario}
              >
                Cancelar
              </button>
            )}
          </div>
        </form>
      </section>

      {mensaje && (
        <div className="alert alert-success mt-2">
          {mensaje}
        </div>
      )}

      {error && (
        <div className="alert alert-warning mt-2">
          {error}
        </div>
      )}

      <section className="mt-4">
        <div className="d-flex justify-content-between align-items-center mb-3">
          <h2 className="fw-bold h4 m-0">Productos registrados</h2>
          <button 
            type="button" 
            className="btn btn-secondary"
            onClick={cargarProductos} 
            disabled={cargando}
          >
            {cargando ? "Consultando..." : "Actualizar lista"}
          </button>
        </div>

        {cargando ? (
          <p>Cargando productos...</p>
        ) : productos.length === 0 ? (
          <p className="text-muted">No hay productos registrados.</p>
        ) : (
          <div className="table-responsive">
            <table className="table table-bordered table-striped">
              <thead className="table-info">
                <tr className="text-center">
                  <th>ID</th>
                  <th>Código</th>
                  <th>Nombre</th>
                  <th>Precio</th>
                  <th>Categoría</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody>
                {productos.map((producto) => (
                  <tr key={producto.idProducto}>
                    <td className="text-center">{producto.idProducto}</td>
                    <td>{producto.proCodigo}</td>
                    <td>{producto.proNombre}</td>
                    <td>
                      {Number(producto.proPrecio).toLocaleString("es-CO", {
                        style: "currency",
                        maximumFractionDigits: 2,
                        currency: "COP",
                      })}
                    </td>
                    <td>{producto.proCategoria}</td>
                    <td className="text-center">
                      <button 
                        type="button" 
                        className="btn btn-info btn-sm text-white"
                        onClick={() => editarProducto(producto)}
                      >
                        Editar
                      </button>
                      <button 
                        type="button"
                        className="btn btn-danger btn-sm ms-2"
                        onClick={() => eliminarProducto(producto)}
                      >
                        Eliminar
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </section>
    </main>
  );
};

export default App;