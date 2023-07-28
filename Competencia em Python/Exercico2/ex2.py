from itertools import groupby

entrada = int(input())
pares = []

for row in range(0, entrada):
    pares.append(input())

pares = sorted(pares)

pares_ordenados = groupby(pares, key=lambda x: x[:-1])

paresOK = 0
for chave, grupo in pares_ordenados:
    botas = list(grupo)
    num_botas_direita = sum(1 for bota in botas if bota[-1] == 'D')
    num_botas_esquerda = sum(1 for bota in botas if bota[-1] == 'E')
    paresOK += min(num_botas_direita, num_botas_esquerda)

print(paresOK)
