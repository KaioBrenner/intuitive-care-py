import csv

# Criando um array 3x3
dados = [
    ['João', 'Maria', 'José'],
    ['Dentes', 'Casa', 'Castinha'],
    ['Balinha', 'Doces', 'Aranha']
]

# Salvando no arquivo CSV com ponto e vírgula como delimitador
with open("tabela.csv", "w", newline="", encoding="utf-8") as f:
    writer = csv.writer(f, delimiter=';')  # Usando ponto e vírgula como delimitador
    writer.writerows(dados)
