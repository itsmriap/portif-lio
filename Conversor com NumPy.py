import numpy as np

def decimal_to_binary(decimal): 
    return np.binary_repr(decimal)

def decimal_to_hex(decimal):
    return np.base_repr(decimal, base=16)

def binary_to_decimal(binary):
    return int(binary, 2)

def binary_to_hex(binary):
    decimal = binary_to_decimal(binary)
    return decimal_to_hex(decimal)

def hex_to_decimal(hexadecimal):
    return int(hexadecimal, 16)

def hex_to_binary(hexadecimal):
    decimal = hex_to_decimal(hexadecimal)
    return decimal_to_binary(decimal)

def main():
    while True:
        print("\nEscolha uma operação:")
        print("1. Decimal para Binário")
        print("2. Decimal para Hexadecimal")
        print("3. Binário para Decimal")
        print("4. Binário para Hexadecimal")
        print("5. Hexadecimal para Decimal")
        print("6. Hexadecimal para Binário")
        print("0. Sair")

        opcao = input("Digite o número da operação desejada: ")

        if opcao == "0":
            print("Saindo...")
            break
        elif opcao == "1":
            decimal = int(input("Digite o número decimal: "))
            print("Binário:", decimal_to_binary(decimal))
        elif opcao == "2":
            decimal = int(input("Digite o número decimal: "))
            print("Hexadecimal:", decimal_to_hex(decimal))
        elif opcao == "3":
            binary = input("Digite o número binário: ")
            print("Decimal:", binary_to_decimal(binary))
        elif opcao == "4":
            binary = input("Digite o número binário: ")
            print("Hexadecimal:", binary_to_hex(binary))
        elif opcao == "5":
            hexadecimal = input("Digite o número hexadecimal: ")
            print("Decimal:", hex_to_decimal(hexadecimal))
        elif opcao == "6":
            hexadecimal = input("Digite o número hexadecimal: ")
            print("Binário:", hex_to_binary(hexadecimal))
        else:
            print("Opção inválida!")

if __name__ == "__main__":
    main()
    