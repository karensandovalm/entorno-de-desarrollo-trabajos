def realizar_division():
    while True:
        try:
            numerador = float(input("Ingrese el numerador: "))
            denominador = float(input("Ingrese el denominador: "))
            resultado = numerador / denominador
            print("El resultado de la division es:", resultado)
            break
        except ValueError:
            print("Error: Debe ingresar valores numericos.")
        except ZeroDivisionError:
            print("Error: No se puede dividir entre cero.")

def main():
    while True:
        realizar_division()
        continuar = input("¿Desea realizar otra division? (s/n): ").lower()
        if continuar != 's':
            break

main()
