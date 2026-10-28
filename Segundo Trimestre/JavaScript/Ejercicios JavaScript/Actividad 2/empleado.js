class Empleado{
    /**
     * constructor del empleado
     * @param {String} nombre 
     * @param {number} salario 
     */
    constructor(nombre,salario){
        this.nombre = nombre;
        this.salario = salario;
    }
    mostrar(){
        console.log(`${this.nombre} "gana" ${this.salario}`)
    }
}
class Desarrollador extends Empleado{
    /**
     * constructor del desarrollador
     * @param {string} nombre 
     * @param {number} salario 
     * @param {String} lenguaje 
     */
    constructor(nombre,salario,lenguaje){
        super(nombre,salario);
        this.lenguaje = lenguaje;
    }
    mostrarLenguaje(){
        console.log(`"lenguaje:" ${this.lenguaje}`)
    }
}

const dev = new Desarrollador ("carlos",3000,"JavaScript")
dev.mostrar();
dev.mostrarLenguaje();