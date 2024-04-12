num = []

for i in range(6):
    try:
        n = int(input("Ingrese un numero: "))
        num.append(n)
    except:
        print("Ingrese un numero")
multiplos = []

for num in num:
    if num % 2 == 0:
        multiplos.append(num)

print("Los multiplos de 2 son:", multiplos)


