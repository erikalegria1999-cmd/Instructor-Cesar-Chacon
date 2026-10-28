let mTriqui = null;

function inicializarMatriz() {
    mTriqui = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];
}

function mostrarMatriz() {
    console.log("--- TABLERO ACTUAL ---");
    for (let i = 0; i < 3; i++) {
        let fila = "";
        for (let j = 0; j < 3; j++) {
            fila += mTriqui[i][j] + "\t"; // Usamos \t para tabulación perfecta
        }
        console.log(fila + "\n");
    }
}

/**
 * Función para realizar un movimiento
 * @param {number} posicion - El número de la casilla (1-9)
 * @param {string} simbolo - "X" o "O"
 */
function jugar(posicion, simbolo) {
    for (let i = 0; i < 3; i++) {
        for (let j = 0; j < 3; j++) {
            if (mTriqui[i][j] === posicion) {
                mTriqui[i][j] = simbolo;
            }
        }
    }
}

// --- PRUEBA DEL JUEGO ---
inicializarMatriz();
mostrarMatriz();

console.log("Jugador 1 elige la casilla 5...");
jugar(5, "X");
mostrarMatriz();

console.log("Jugador 2 elige la casilla 1...");
jugar(1, "O");
mostrarMatriz();