# Vamos a crear un código en Python que convierta un número decimal a binario, octal y hexadecimal,
# y que genere la tabla solicitada para los primeros 16 números decimales (del 0 al 15).

import pandas as pd

# Crear una lista con los números decimales del 0 al 15
decimales = list(range(16))

# Crear las listas con las conversiones a binario, octal y hexadecimal
binarios = [bin(num)[2:] for num in decimales]  # Eliminamos el prefijo '0b'
octales = [oct(num)[2:] for num in decimales]   # Eliminamos el prefijo '0o'
hexadecimales = [hex(num)[2:].upper() for num in decimales]  # Eliminamos el prefijo '0x' y lo convertimos a mayúsculas

# Crear un DataFrame con los datos
tabla_conversiones = pd.DataFrame({
    'Decimal': decimales,
    'Binario': binarios,
    'Octal': octales,
    'Hexadecimal': hexadecimales
})

# Mostrar la tabla
tabla_conversiones
