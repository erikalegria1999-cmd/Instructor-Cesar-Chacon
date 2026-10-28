class Usuario{
#password;
/**
 * 
 * @param {string} nombre 
 * @param {number} password 
 */
constructor(nombre,password){
    this.nombre = nombre;
    this.#password = password;
}
    validarPassword(pass){
        return this.#password === pass;
    }

}
const user = new Usuario("admin","1234");
console.log(user.validarPassword("1234"));