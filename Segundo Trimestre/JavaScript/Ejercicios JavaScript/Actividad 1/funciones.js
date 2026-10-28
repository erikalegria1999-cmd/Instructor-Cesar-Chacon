function areaCuadrado(lado){
        return  lado * lado

}

function areaTriangulo(base,altura){
        return base * altura / 2 

}

function areaCirculo(Radio){
    return Math.PI * Math.pow(Radio,2)
}

console.log("el area del cuadrado de lado 5 es:", areaCuadrado(5))
console.log("el area del triangulo de base 3 y altura 4 es:", areaTriangulo(3, 4));
console.log("el area del circulo de lado 5 es:", areaCirculo(5))