class Figura{
    /**
     * figura inicia en cero
     * @returns 
     */
    calcularArea(){
        return 0;
    }
}

class Cuadrado extends Figura{
/**
 *  constructor del cuadrado
 * @param {number} lado 
 */
    constructor(lado){
        super();
        this.lado = lado;
    }
}

class Circulo extends Figura{
/**
 * constructor del circulo
 * @param {number} radio 
 */
    constructor(radio){
        super();
        this.radio = radio;
    }
    calcularArea(){
        return Math.PI * this.radio*this.radio;
    }
}
const c1 = new Cuadrado(4);
const c2 = new Circulo(3);
console.log(c1.calcularArea())
console.log(c2.calcularArea())

