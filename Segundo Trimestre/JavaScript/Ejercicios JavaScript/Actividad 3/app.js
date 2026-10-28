
function modificarTexto(){
    const cajaTexto= document.getElementById("textoDiv1")
    cajaTexto.textContent = "NUEVO TEXTO "
    cajaTexto.style.color= "#ff3c00"
    

}
function agregarDatos(){
    const Nombre = document.getElementById("Nombre")
    const Apellido = document.getElementById("Apellido")
    const Correo = document.getElementById("Correo")
    const name = prompt("ingrese su nombre")
    const lastname = prompt("ingrese su apellido")
    const email = prompt("ingrese su correo")

    Nombre.textContent=name
    Apellido.textContent=lastname
    Correo.textContent = email
}







