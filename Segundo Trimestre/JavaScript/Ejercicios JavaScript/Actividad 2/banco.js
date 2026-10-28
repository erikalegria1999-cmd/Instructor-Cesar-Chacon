


class cuenta {
    #saldo;
/**
 * constructor  cuenta
 */
    constructor() {
        this.codigo = Math.floor(Math.random() * 10000); 
        this.#saldo = 0;
        this.fechaCreacion = new Date().toDateString();
        this.estado = "activo";

        console.log("---- Cuenta Creada ----");
        console.log("Fecha:", this.fechaCreacion);
        console.log("Código:", this.codigo);
        console.log("Estado:", this.estado);

    }
}
class cliente extends cuenta {
    /**
     * constructor del cliente
     * @param {number} identificacion 
     * @param {string} nombre 
     * @param {string} correo 
     */
    constructor(identificacion, nombre, correo) {
        super(); 
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.correo = correo;

        console.log(`Nombre: ${nombre} , Identificacion: ${identificacion}, Correo: ${correo}`)
    }
}

const micliente = new  cliente (` 1061822122, erikalegria1999@gmail.com`)



