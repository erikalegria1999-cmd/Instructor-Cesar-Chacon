
class Persona{
    //constructor
    /**
     * constructor de la clase
     * @param {string} nombre 
     * @param {number} edad 
     */
    constructor(nombre,edad){
        this.nombre= nombre;
        this.edad = edad;
    }
    /**
     * Metodo que muestra en consola 
     */
    saludar(){
        console.log("Hola Soy" + this.nombre);
    }
};

const p1 = new Persona("carlos,",22)
p1.saludar()
const p2 = new Persona("Maria",25)
p2.saludar()
p1.nombre = "charlie"
p1.saludar()


