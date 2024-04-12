while True:
    try:
        numerador = float(input("Ingrese el numerador: "))
        denominador = float(input("Ingrese el denominador: "))
        resultado = numerador / denominador
        print("El resultado de la división es:", resultado)
    except ValueError:
        print("Error: Debe ingresar valores numéricos.")
    except ZeroDivisionError:
        print("Error: No es posible dividir entre cero.")
    else:
        choice = input("¿Desea realizar otra división? (s/n): ")
        if choice.lower() != 's':
            break