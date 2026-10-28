const persona ={
    nombre: "carlos",
    edad: 20,
    saludar: function(){
        console.log("Hola soy"+ this.nombre)
    }
};
console.log("El tipo de Dato de persona es:" + typeof persona);
persona.saludar();
