class Cuenta {
    /**
     * Atributo privado de la cuenta
     */
    #saldo;
    /**
     * constructor de la cuenta
     * @param {number} saldoInicial 
     */

    constructor (saldoInicial){
        this.#saldo= saldoInicial
    }
    /**
     * Permite actualizar saldo con valor
     * @param {number} valor 
     */
    depositar(valor){
        this.#saldo += valor
    }
    /**
     * retorna el saldo actual de la persona
     * @returns 
     */
    verSaldo(){
        return this.#saldo
    }
}

const c1 = new Cuenta(1000)
c1.depositar(500)
console.log("El Saldo actual es:"+ c1.verSaldo())
console.log(`El Saldo actual es: ${c1.verSaldo()}`)

c1.depositar(500)
console.log(`El saldo actual es: ${c1.verSaldo()}`)

