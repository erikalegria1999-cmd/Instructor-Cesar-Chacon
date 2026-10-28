class Estudiante{
    /**
     * constructor de Estudiantes
     * @param {string} nombre 
     * @param {number} nota 
     */
    constructor(nombre,nota){
        this.nombre = nombre;
        this.nota = nota;
    }

    mostrarInfo(){
        console.log(this.nombre + " tiene nota " + this.nota);
    }
}
const estudiante1 = new Estudiante("luis",4.5)
estudiante1.mostrarInfo();