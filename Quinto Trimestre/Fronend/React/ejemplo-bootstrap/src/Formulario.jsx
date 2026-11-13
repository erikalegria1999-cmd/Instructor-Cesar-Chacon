export default function Formulario() {
    return (
        <div className="container mt-5 mb-5">
            <div className="row justify-content-center">
                <div className="col-md-7 col-lg-6">
                    <div className="card shadow-lg border-0 rounded-4 p-4 p-md-5 bg-white">
                        
                        {/* Encabezado del Formulario */}
                        <div className="text-center mb-4">
                            <div className="bg-primary text-white rounded-circle d-inline-flex align-items-center justify-content-center mb-3 shadow-sm" style={{ width: '60px', height: '60px' }}>
                                <i className="bi bi-person-fill fs-4">📝</i>
                            </div>
                            <h2 className="fw-bold text-dark">Registro de Usuario</h2>
                            <p className="text-muted small">Completa los siguientes datos para continuar</p>
                        </div>
                        
                        <form>
                            {/* Campo Nombre */}
                            <div className="mb-3">
                                <label htmlFor="nombre" className="form-label fw-semibold text-secondary">
                                    Nombre Completo
                                </label>
                                <input 
                                    type="text" 
                                    id="nombre" 
                                    className="form-control form-control-lg bg-light border-0 py-2" 
                                    placeholder="Ej. Juan Pérez"
                                />
                            </div>

                            {/* Campo Correo */}
                            <div className="mb-3">
                                <label htmlFor="correo" className="form-label fw-semibold text-secondary">
                                    Correo Electrónico
                                </label>
                                <input 
                                    type="email" 
                                    id="correo" 
                                    className="form-control form-control-lg bg-light border-0 py-2" 
                                    placeholder="correo@ejemplo.com"
                                />
                            </div>

                            {/* Campo Fecha Nacimiento */}
                            <div className="mb-3">
                                <label htmlFor="fecha" className="form-label fw-semibold text-secondary">
                                    Fecha de Nacimiento
                                </label>
                                <input 
                                    type="date" 
                                    id="fecha" 
                                    className="form-control form-control-lg bg-light border-0 py-2" 
                                />
                            </div>

                            {/* Campo País */}
                            <div className="mb-4">
                                <label htmlFor="pais" className="form-label fw-semibold text-secondary">
                                    País de Residencia
                                </label>
                                <select 
                                    id="pais" 
                                    className="form-select form-select-lg bg-light border-0 py-2"
                                >
                                    <option value="" disabled selected>Selecciona tu país...</option>
                                    <option value="Colombia">Colombia</option>
                                    <option value="Peru">Perú</option>
                                    <option value="Venezuela">Venezuela</option>
                                </select>
                            </div>

                            {/* Botones de acción */}
                            <div className="d-grid gap-2 d-md-flex justify-content-md-end pt-2">
                                <button type="button" className="btn btn-outline-secondary px-4 py-2 rounded-pill">
                                    Cancelar
                                </button>
                                <button type="submit" className="btn btn-success px-4 py-2 rounded-pill shadow-sm">
                                    Aceptar Registro
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    );
}