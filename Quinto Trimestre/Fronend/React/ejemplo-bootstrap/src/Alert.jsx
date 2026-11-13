import Alert from 'react-bootstrap/Alert';
import { useState } from 'react';

export default function AlertasEjemplo() {
  // Estado para controlar si la alerta de cierre manual sigue visible
    const [show, setShow] = useState(true);

    return (
        <div className="container mt-4">
        <h3 className="mb-4 text-center fw-bold">Tipos de Alertas en Bootstrap</h3>

        {/* Alerta de éxito */}
        <Alert variant="success" className="shadow-sm">
            <Alert.Heading>¡Operación exitosa!</Alert.Heading>
            <p className="mb-0">
            Tus cambios han sido guardados correctamente en la base de datos.
            </p>
        </Alert>

        {/* Alerta de advertencia */}
        <Alert variant="warning" className="shadow-sm">
            <strong>Atención:</strong> Tu sesión expirará en pocos minutos. Por favor, guarda tu trabajo.
        </Alert>

        {/* Alerta de error / peligro */}
        <Alert variant="danger" className="shadow-sm">
            <strong>Error de conexión:</strong> No se pudo conectar con el servidor. Inténtalo de nuevo más tarde.
        </Alert>

        {/* Alerta informativa con enlace */}
        <Alert variant="info" className="shadow-sm">
            Hay una nueva actualización disponible para el sistema. <Alert.Link href="#">Ver novedades</Alert.Link>.
        </Alert>

        {/* Alerta con botón de cierre (Dismissible) */}
        {show ? (
            <Alert variant="primary" onClose={() => setShow(false)} dismissible className="shadow-sm">
            Esta es una alerta informativa que puedes cerrar haciendo clic en la "X".
            </Alert>
        ) : (
            <button className="btn btn-outline-primary btn-sm mb-3" onClick={() => setShow(true)}>
            Mostrar alerta cerrada
            </button>
        )}
        </div>
    )
}