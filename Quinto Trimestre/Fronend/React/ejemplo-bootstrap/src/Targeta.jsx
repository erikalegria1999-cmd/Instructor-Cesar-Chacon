import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import Badge from 'react-bootstrap/Badge';

export default function Tarjeta() {
    return (
        <div className="d-flex justify-content-center my-4">
        <Card 
            style={{ width: '22rem' }} 
            className="shadow-sm border-0 rounded-4 overflow-hidden card-hover"
        >
            {/* Imagen superior con Badge flotante */}
            <div className="position-relative">
            <Card.Img 
                variant="top" 
                src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=600&q=80" 
                alt="Desarrollo de Software"
                style={{ height: '180px', objectFit: 'cover' }}
            />
            <Badge 
                bg="success" 
                className="position-absolute top-0 end-0 m-3 px-3 py-2 rounded-pill shadow-sm"
            >
                Activo
            </Badge>
            </div>

            {/* Cuerpo de la Tarjeta */}
            <Card.Body className="p-4">
            <div className="text-muted small mb-1 fw-bold text-uppercase tracking-wide">
                Curso de React
            </div>
            
            <Card.Title className="fw-bold fs-5 text-dark mb-2">
                Desarrollo Web Frontend
            </Card.Title>
            
            <Card.Text className="text-secondary small mb-4">
                Aprende a construir interfaces modernas, dinámicas y adaptables utilizando React, JSX y componentes reutilizables.
            </Card.Text>

            {/* Botones de Acción */}
            <div className="d-flex gap-2">
                <Button variant="primary" className="w-100 rounded-pill fw-semibold py-2">
                Ver Detalles
                </Button>
                <Button variant="outline-secondary" className="rounded-circle p-2 d-flex align-items-center justify-content-center" style={{ width: '42px', height: '42px' }}>
                ❤️
                </Button>
            </div>
            </Card.Body>
        </Card>
        </div>
    )
}