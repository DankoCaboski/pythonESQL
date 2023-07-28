def encontra_peca():
    try:
        n_pecas = int(input("")) 
        n_pecas/1
        numero = []
        for i in range(n_pecas-1):
            numero.append(int(input("Informe o nuúmero das peças: ")))
        soma = ((len(numero)+1) * ((len(numero)+1) + 1)) // 2
        soma2 = sum(numero)
        falta = soma - soma2
        print("A peça que falta é: ", falta)
    except:
        print("Informe apenas números:")
        encontra_peca()

encontra_peca()