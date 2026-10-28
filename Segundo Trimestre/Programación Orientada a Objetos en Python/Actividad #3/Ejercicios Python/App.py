from Clases import *
from datetime import datetime as dt, timedelta  

miBiblioteca=Biblioteca("Sena-ctpi")

autor1=Autor("Gabriel Garcia Marquez","Colombiano")
autor2=Autor("Jose Eustacio Rivera","Colombiano")
libro1=Libro("Cien Años de Soledad","Novela",autor1)

print(f"Libro: {libro1.titulo}")
print(f"Autor: {libro1.autor.obtenerNombre()} {libro1.autor.obtenerNacionalidad()}")   # Obtener los atributos privados

miBiblioteca.registrarLibro(libro1)
autor3=Autor("Robert Greene","Estadounidense")
libro2=Libro("Las cuarenta y ocho leyes del poder","Economia",autor3)

miBiblioteca.registrarLibro(libro2)

print("Lista de libros de la Biblioteca")
for libro in miBiblioteca.libros:
    print("=" * 20)
    print(f"Titulo Libro: {libro.titulo}")
    print(f"Autor: {libro.autor.obtenerNombre()}")
    print("=" * 20)
    
    
docente1=Docente("software",11,"Pablo Rojas","projas@sena.edu.co")
estudiante1=Estudiante(290,12,"Juan Lozano","jlozano@gmail.com")
fechaHoy=dt.now()
print(fechaHoy)
dias_prestamo=timedelta(days=5)
fechaDevolucion=fechaHoy.date()+dias_prestamo
print(fechaDevolucion)
prestamo1=Prestamo(fechaHoy,fechaDevolucion)
prestamo1.registrarPrestamo(libro1,estudiante1)
prestamo2=Prestamo(fechaHoy,fechaDevolucion)
prestamo2.registrarPrestamo(libro2,docente1)

# Modificacion cuando el atributo
autor1.modificarNacionalidad("Mexicano")    #Modificacion cuando el atributo es privado
print(f"Nombre Autor: {autor1.obtenerNombre()} {autor1.obtenerNacionalidad()}")


docente1.saludar()
estudiante1.saludar()