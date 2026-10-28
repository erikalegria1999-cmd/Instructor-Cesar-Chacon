import pandas as pd

df = pd.read_csv("inventario.csv")

producto_caro = df.loc[df['Precio'].idxmax()]

producto_mas_stock = df.loc[df['Stock'].idxmax()]

print(f"....Análisis del Inventario....")
print(f"Producto más costoso: {producto_caro['Producto']} (${producto_caro['Precio']})")
print(f"Producto con mayor stock: {producto_mas_stock['Producto']} ({producto_mas_stock['Stock']} unidades)")

df['valor_total'] = df['Stock'] * df['Precio']

print("\nTabla Actualizada")
print(df)

df.to_csv("inventario_actualizado.csv", index=False, encoding="utf-8")

print("\n¡Archivo 'inventario_actualizado.csv' guardado con éxito!")


