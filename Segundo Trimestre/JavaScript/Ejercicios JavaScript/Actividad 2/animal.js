class Animal{
    /**
     * Constructor de la clase padre animal
     * @param {string} nombre 
     */
    constructor(nombre){
        this.nombre = nombre;
    }
    hacerSonido(){
        console.log("Hacer Sonido")
    }
}
class Perro extends Animal{
    hacerSonido(){
        console.log("ladra")
    }
}

class Gato extends Animal{
    hacerSonido(){
        console.log("maulla")
    }
}

const p1 = new Perro("Firulais")
p1.hacerSonido()
const g1 = new Gato("michi")
g1.hacerSonido() 