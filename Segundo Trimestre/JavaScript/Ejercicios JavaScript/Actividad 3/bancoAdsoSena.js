/**
 * Clase Usuario
 */
class Usuario {
    #password;
    constructor(nombre, password) {
        this.nombre = nombre;
        this.#password = password;
    }

    validarPassword(pass) {
        return this.#password === pass;
    }
}

const user = new Usuario("admin", "1234");
console.log("¿Password admin correcto?:", user.validarPassword("1234"));

/**
 * Clase Clientes
 */
class Clientes {
    constructor(nombre, saldo) {
        this.nombre = nombre;
        this.saldo = saldo;
    }

    retirar(monto) {
        if (monto <= this.saldo) {
            this.saldo -= monto;
            console.log(`${this.nombre} retiró: ${monto} | Nuevo saldo: ${this.saldo}`);
        } else {
            console.log(`${this.nombre}: Fondos insuficientes para retirar ${monto}`);
        }
    } 

    consignacion(dinero) {
        if (dinero > 0) {
            this.saldo += dinero;
            console.log(`${this.nombre} Consignación: ${dinero} | Nuevo Saldo: ${this.saldo}`);
        } else {
            console.log("Consignación fallida: El monto debe ser mayor a 0");
        }
    }

    mostrar() {
        console.log(`Nombre: ${this.nombre} | Saldo: ${this.saldo}`);
    }
}

// --- PRUEBAS ---
const cliente1 = new Clientes("Juan", 1000);

cliente1.mostrar();      // Nombre: Juan | Saldo: 1000
cliente1.retirar(200);   // Juan retiró: 200 | Nuevo saldo: 800
cliente1.consignacion(500); // Juan Consignación: 500 | Nuevo Saldo: 1300
cliente1.mostrar();      // Nombre: Juan | Saldo: 1300



