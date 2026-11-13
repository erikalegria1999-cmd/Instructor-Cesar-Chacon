import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';

export default function BarraNavegacion() {
    return (
        <Navbar expand="lg" className="bg-white shadow-sm py-3 sticky-top">
        <Container>
            {/* Logotipo o Título de la App */}
            <Navbar.Brand href="#home" className="fw-bold fs-4 text-primary">
            🚀 MiApp
            </Navbar.Brand>

            {/* Botón hamburguesa para celulares */}
            <Navbar.Toggle aria-controls="basic-navbar-nav" />

            {/* Contenido colapsable */}
            <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto align-items-lg-center">
                <Nav.Link href="#home" className="fw-semibold text-dark active">Inicio</Nav.Link>
                <Nav.Link href="#cursos" className="fw-semibold text-secondary">Cursos</Nav.Link>
                
                {/* Menú desplegable */}
                <NavDropdown title="Categorías" id="basic-nav-dropdown" className="fw-semibold">
                <NavDropdown.Item href="#action/1">Frontend (React)</NavDropdown.Item>
                <NavDropdown.Item href="#action/2">Backend (Node.js)</NavDropdown.Item>
                <NavDropdown.Item href="#action/3">Bases de Datos (MySQL)</NavDropdown.Item>
                <NavDropdown.Divider />
                <NavDropdown.Item href="#action/4">Ver todos los temas</NavDropdown.Item>
                </NavDropdown>

                <Nav.Link href="#contacto" className="fw-semibold text-secondary">Contacto</Nav.Link>
            </Nav>

            {/* Formulario de búsqueda y Botón de perfil/sesión */}
            <Form className="d-flex gap-2 mt-3 mt-lg-0">
                <Form.Control
                type="search"
                placeholder="Buscar..."
                className="rounded-pill bg-light border-0 px-3"
                aria-label="Search"
                />
                <Button variant="outline-primary" className="rounded-pill px-4 fw-semibold text-nowrap">
                Ingresar
                </Button>
            </Form>
            </Navbar.Collapse>
        </Container>
        </Navbar>
    )
}