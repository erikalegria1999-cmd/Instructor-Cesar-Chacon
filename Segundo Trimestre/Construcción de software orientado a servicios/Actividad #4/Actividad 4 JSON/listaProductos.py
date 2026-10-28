import json
import pandas as pd


productos=[  
{"producto": "Laptop Pro 15", "precio": 1200.50, "cantidad": 8},
{"producto": "Mouse Ergonómico", "precio": 25.99, "cantidad": 45},
{"producto": "Teclado Mecánico RGB", "precio": 85.00, "cantidad": 20},
{"producto": "Monitor 27 Pulgadas", "precio": 299.99, "cantidad": 12},
{"producto": "Auriculares Bluetooth", "precio": 59.50, "cantidad": 30},
{"producto": "Cámara Web 1080p", "precio": 45.00, "cantidad": 15},
{"producto": "Micrófono Condensador", "precio": 110.00, "cantidad": 10},
{"producto": "Silla de Oficina", "precio": 180.75, "cantidad": 5},
{"producto": "Escritorio Elevable", "precio": 350.00, "cantidad": 3},
{"producto": "Lámpara LED Escritorio", "precio": 19.99, "cantidad": 50},
{"producto": "Disco Duro Externo 2TB", "precio": 75.00, "cantidad": 25},
{"producto": "Memoria USB 64GB", "precio": 12.50, "cantidad": 100},
{"producto": "Tarjeta SD 128GB", "precio": 22.00, "cantidad": 60},
{"producto": "Hub USB-C", "precio": 35.00, "cantidad": 18},
{"producto": "Cargador Rápido 65W", "precio": 29.99, "cantidad": 40},
{"producto": "Cable HDMI 2.1", "precio": 15.50, "cantidad": 80},
{"producto": "Smartphone Alpha", "precio": 899.00, "cantidad": 7},
{"producto": "Funda para Laptop", "precio": 18.00, "cantidad": 35},
{"producto": "Adaptador Ethernet", "precio": 14.99, "cantidad": 22},
{"producto": "Power Bank 20000mAh", "precio": 49.00, "cantidad": 14},
{"producto": "Impresora Láser", "precio": 150.00, "cantidad": 6},
{"producto": "Tóner Negro", "precio": 40.00, "cantidad": 12},
{"producto": "Papel A4 (500 hojas)", "precio": 5.50, "cantidad": 200},
{"producto": "Altavoces 2.1", "precio": 65.00, "cantidad": 9},
{"producto": "Router Wi-Fi 6", "precio": 120.00, "cantidad": 11},  {"producto": "Repetidor de Señal", "precio": 30.00, "cantidad": 28},
{"producto": "Tableta Gráfica", "precio": 199.99, "cantidad": 4},
{"producto": "Lápiz Digital", "precio": 45.00, "cantidad": 16},
{"producto": "Soporte para Monitor", "precio": 39.50, "cantidad": 20},
{"producto": "Alfombrilla XL", "precio": 12.00, "cantidad": 55},
{"producto": "Ventilador PC 120mm", "precio": 9.99, "cantidad": 40},
{"producto": "Pasta Térmica", "precio": 7.50, "cantidad": 100},
{"producto": "Gabinete Mid-Tower", "precio": 89.00, "cantidad": 6},
{"producto": "Fuente de Poder 750W", "precio": 110.00, "cantidad": 8},
{"producto": "Memoria RAM 16GB", "precio": 65.00, "cantidad": 24},
{"producto": "Procesador i7 Gen 13", "precio": 380.00, "cantidad": 5},
{"producto": "Tarjeta de Video RTX", "precio": 550.00, "cantidad": 3},
{"producto": "Placa Base Z790", "precio": 210.00, "cantidad": 4},
{"producto": "SSD NVMe 1TB", "precio": 95.00, "cantidad": 18},
{"producto": "Enfriamiento Líquido", "precio": 130.00, "cantidad": 7},
{"producto": "Smartwatch V2", "precio": 210.00, "cantidad": 12},
{"producto": "Protector de Pantalla", "precio": 8.00, "cantidad": 150},
{"producto": "Cargador Inalámbrico", "precio": 25.00, "cantidad": 30},
{"producto": "Trípode para Cámara", "precio": 45.00, "cantidad": 10},
{"producto": "Mochila Antirrobo", "precio": 55.00, "cantidad": 20},
{"producto": "Organizador de Cables", "precio": 6.99, "cantidad": 120},
{"producto": "Limpiador de Pantallas", "precio": 5.00, "cantidad": 85},
{"producto": "Candado para Laptop", "precio": 15.00, "cantidad": 33},
{"producto": "Luz de Anillo Video", "precio": 32.50, "cantidad": 14},
{"producto": "Soporte para Tablet", "precio": 19.00, "cantidad": 25}
]

with open("Productos.json", "w",encoding= "utf-8") as archivo:
    json.dump(productos,archivo,indent=8 )
print("lista creada...")






