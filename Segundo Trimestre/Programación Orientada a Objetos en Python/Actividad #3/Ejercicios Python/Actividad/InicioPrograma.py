
from SenalinguaCompany import*

# PROGRAMA PRINCIPAL

# Crear empresa
empresa = Empresa(1, "Senalingua", "123456")
# Crear departamento
departamento1 = Departamento(1, "Producción", "Area operativa")
empresa.añadirDepartamento(departamento1)
# Crear contratos
contrato1 = Contrato(1, "Indefinido", "01-01-2024", "Indefinido", 1200000, "Activo")
contrato2 = Contrato(2, "Fijo", "01-01-2024", "31-12-2024", 1300000, "Activo")
# Crear DOS empleados (Operarios)
empleado1 = Operario(1, "Carlos", "Perez", "123","01-01-2024", departamento1, contrato1,10, 5000)

empleado2 = Operario(2, "Ana", "Gomez", "456","01-01-2024", departamento1, contrato2,5, 8000)
# Añadir empleados
empresa.añadirEmpleado(empleado1)
empresa.añadirEmpleado(empleado2)
# Mostrar información
empresa.mostrarEmpleados()