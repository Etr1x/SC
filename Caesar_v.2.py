alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
choose = input('шифровка(c)/дешифровка(d)? Введите c или d: ')
a = int(input('Шаг: '))
message = input("Сообщение: ").upper()
cypher = ''
for i in message:
    number = alphabet.find(i)
    if choose == 'c':
        number_new = number + a
    elif choose == 'd':
        number_new = number - a
    else:
        print("Invalid argument")
        break
    if i in alphabet:
        cypher += alphabet[number_new]
    else:
        cypher += i
print(cypher)