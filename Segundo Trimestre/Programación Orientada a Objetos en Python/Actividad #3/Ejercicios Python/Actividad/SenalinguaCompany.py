# CLASE CONTRATO
class Contrato:

    def __init__(self, idContrato, tipoContrato, fechaInicio, fechaFin, salarioBase, estado):
        self.__idContrato = idContrato
        self.__tipoContrato = tipoContrato
        self.__fechaInicio = fechaInicio
        self.__fechaFin = fechaFin
        self.__salarioBase = salarioBase
        self.__estado = estado

    def obtenerSalarioBase(self):
        return self.__salarioBase

    def obtenerTipoContrato(self):
        return self.__tipoContrato

# CLASE DEPARTAMENTO
class Departamento:

    def __init__(self, idDepartamento, nombre, descripcion):
        self.__idDepartamento = idDepartamento
        self.__nombre = nombre
        self.__descripcion = descripcion
        self.__listaEmpleados = []

    def añadirEmpleado(self, empleado):
        self.__listaEmpleados.append(empleado)

    def obtenerNombre(self):
        return self.__nombre



# CLASE EMPLEADO
class Empleado:

    def __init__(self, idEmpleado, nombre, apellido, documento,fechaIngreso, departamento, contrato):

        self.__idEmpleado = idEmpleado
        self.__nombre = nombre
        self.__apellido = apellido
        self.__documento = documento
        self.__fechaIngreso = fechaIngreso
        self.__departamento = departamento
        self.__contrato = contrato

    def obtenerNombre(self):
        return self.__nombre

    def obtenerDepartamento(self):
        return self.__departamento.obtenerNombre()

    # MÉTODO POLIMÓRFICO
    def calcularSalario(self):
        return self.__contrato.obtenerSalarioBase()



# CLASE OPERARIO
class Operario(Empleado):

    def __init__(self, idEmpleado, nombre, apellido, documento,fechaIngreso, departamento, contrato,horasExtras, valorHoraExtra):

        super().__init__(idEmpleado, nombre, apellido, documento,fechaIngreso, departamento, contrato)

        self.__horasExtras = horasExtras
        self.__valorHoraExtra = valorHoraExtra

    # POLIMORFISMO (sobrescritura)
    def calcularSalario(self):
        salarioBase = super().calcularSalario()
        return salarioBase + (self.__horasExtras * self.__valorHoraExtra)



# CLASE EMPRESA
class Empresa:

    def __init__(self, idEmpresa, nombre, nit):
        self.__idEmpresa = idEmpresa
        self.__nombre = nombre
        self.__nit = nit
        self.__listaEmpleados = []
        self.__listaDepartamentos = []

    def añadirEmpleado(self, empleado):
        self.__listaEmpleados.append(empleado)

    def añadirDepartamento(self, departamento):
        self.__listaDepartamentos.append(departamento)

    def mostrarEmpleados(self):
        print("Empresa:", self.__nombre)
        
        for emp in self.__listaEmpleados:
            print("Nombre:", emp.obtenerNombre())
            print("Departamento:", emp.obtenerDepartamento())
            print("Salario Total:", emp.calcularSalario())
            

