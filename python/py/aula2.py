# import this

# Beautiful is better than ugly.
# Explicit is better than implicit.
# Simple is better than complex.
# Complex is better than complicated.
# Flat is better than nested.
# Sparse is better than dense.
# Readability counts.
# Special cases aren't special enough to break the rules.
# Although practicality beats purity.
# Errors should never pass silently.
# Unless explicitly silenced.
# In the face of ambiguity, refuse the temptation to guess.
# There should be one-- and preferably only one --obvious way to do it.
# Although that way may not be obvious at first unless you're Dutch.
# Now is better than never.
# Although never is often better than *right* now.
# If the implementation is hard to explain, it's a bad idea.
# If the implementation is easy to explain, it may be a good idea.
# Namespaces are one honking great idea -- let's do more of those!

# print('Hello World')

# def exercicio1():
#     num1 = 10
#     num2 = 5

#     soma = num1 + num2
#     subtracao = num1 + num2
#     multiplicacao = num1 * num2
#     divisao = num1 / num2

#     print('Soma: ',soma)
#     print('Subtração: ',subtracao)
#     print('Multiplicação: ',multiplicacao)
#     print('Divisão: ',divisao)

# exercicio1()

# print((10+3)*7/2-3**2)

# def exer():
#     n1 = 10
#     n2 = 10
#     n3 = 10
#     n4 = 10
#     nt = (n1+n2+n3+n4)/4
#     print('Media ',nt)

# exer()
# tupla = (1,2,3,4,5)
# tupla = ('z','a')
# sortiado = sorted(tupla)
# print(sortiado)
#############################################
# import random
# menor = 1
# maior =100
# numero = random.randint(menor, maior)
# tentativas = 0

# print('Bem-vindo ao jogo da advinhação!')
# print(f'Escolha um número de {menor} a {maior}. Você tem {tentativas} tentativas para advinahar')

# while tentativas < 10:
#     palpite = int(input('Digite o seu palpite: '))
#     tentativas+=1

#     if palpite == numero:
#         print(f'Parabéns! Você acertou o número em {tentativas} tentativas')
#         break
#     elif palpite < numero:
#         print('O número é maior. Tente novamente.')
#     else:
#         print('O número é menor. Tente novamente.')
# else:
#     print(f'Você perdeu! O número era {numero}.')
#############################################
# import random
# import string

# def gerar_senha(comprimento,maiusculas,minusculas,numeros, especiais):
#     #define os caracteres possiveis
#     caracteres_maisculas = string.ascii_uppercase
#     caracteres_minusculas= string.ascii_lowercase
#     caracteres_numeros = string.digits
#     caracteres_especiais = string.punctuation

#     #lista para armazenar os caracteres.
#     caracteres =[]

#     # adiciona os caracteres selecionados de acordo com os cliterios definidos.
#     if maiusculas:
#         caracteres.extend(caracteres_maisculas)
#     if minusculas:
#         caracteres.extend(caracteres_minusculas)
#     if numeros:
#         caracteres.extend(caracteres_numeros)
#     if especiais:
#         caracteres.extend(caracteres_especiais)
#     #verifica se pelo menos 1 foi selecionado
#     if not caracteres:
#         print(" Erro : selecione pelo menos 1 caracter")
#         return None
#     senha=''.join(random.choice(caracteres) for _ in range(comprimento))

#     return senha

# senha = gerar_senha(10,'s','s','s','s')
# print(senha)
# #############################################