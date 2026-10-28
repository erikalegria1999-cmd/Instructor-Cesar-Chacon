const prompt = require("prompt-sync")();

let mTriqui = null
let jugador = null
let turnos = 0
let ganador = null

function inicializarMatriz() {
    mTriqui = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];
    jugador = "X"
    turnos = 0
    ganador= null
}

function mostrarMatriz() {
    console.clear(); 
    console.log(" TRIQUI  \n");
    for (let i = 0; i < 3; i++) {
        let fila = "";
        for (let j = 0; j < 3; j++) {
            fila += mTriqui[i][j] + "    ";
        }
        console.log(fila + "\n");
    }
}

function validarGanador(){
    for (let i = 0; i < 3; i++) {
        if (mTriqui[i][0] === mTriqui[i][1] && mTriqui[i][1] === mTriqui[i][2]) return true;
    }
    // Revisar Columnas
    for (let i = 0; i < 3; i++) {
        if (mTriqui[0][i] === mTriqui[1][i] && mTriqui[1][i] === mTriqui[2][i]) return true;
    }
    // Revisar Diagonales
    if (mTriqui[0][0] === mTriqui[1][1] && mTriqui[1][1] === mTriqui[2][2]) return true;
    if (mTriqui[0][2] === mTriqui[1][1] && mTriqui[1][1] === mTriqui[2][0]) return true;

    return false;
}

function jugar() {
    console.log(`Turno del jugador: ${jugador}`);
    let posicion = parseInt(prompt("Ingrese posición a jugar: "));
    let encontrado = false;

    for (let i = 0; i < 3; i++) {
        for (let j = 0; j < 3; j++) {
            if (mTriqui[i][j] === posicion) {
                mTriqui[i][j] = jugador;
                encontrado = true;
                break; 
            }
        }
        if (encontrado) break; 
    }

    if (encontrado) {
        turnos++;
        jugador = (jugador === "X") ? "0" : "X";
    } else {
        console.log(" Posición no válida o ya ocupada. Presione Enter para reintentar...");
        prompt(); 
    }

    mostrarMatriz();
}


inicializarMatriz();
mostrarMatriz();


while (turnos < 9) {
    jugar();
    
    
}

console.log("Fin del juego.");