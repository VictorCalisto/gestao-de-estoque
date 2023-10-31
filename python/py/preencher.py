from faker import Faker
import sql
import random
import re



banco = sql.Banco()
fake = Faker(['it_IT', 'en_US', 'pt_BR', 'es_ES', 'pt_PT', 'es'])
tabela = 'pessoas'
banco.excluir_tabela(tabela)
colunas = {
        'id':'INTEGER PRIMARY KEY AUTOINCREMENT',
        'nome_completo':'VARCHAR(500)',
        'altura':'DECIMAL(1,2)',
        'peso':'DECIMA(3,2)',
        'idade':'INTEGER',
        'sexo':'BOOLEAN',
        'data_nascimento':'DATE',
        'telefone':'VARCHAR(150) UNIQUE',
        'email':'VARCHAR(150) UNIQUE'
}
banco.criar_tabela(tabela,colunas)
def nome_sem_titulo():
        nome = fake.name()
        partes = nome.split(' ')
        if len(partes) > 1 and partes[0].endswith('.'):
            nome = ' '.join(partes[1:])
        nome = nome.strip()
        return nome
def email_relacionado_ao_nome(nome):
    # Divide o nome em partes (presumindo que o nome contém espaço entre nome e sobrenome)
    partes = nome.split(' ')
    if len(partes) >= 2:
        # Cria um email combinando o primeiro nome e sobrenome com o domínio fictício
        partes[0]=re.sub(r'[^a-z]', '', partes[0].lower())
        partes[-1]=re.sub(r'[^a-z]', '', partes[-1].lower())
        email = f"{partes[0]}.{partes[-1]}@example.org"
        return email
quantidade = 1000 #evite numeros magicos
for _ in range(quantidade):
        nome_completo = nome_sem_titulo()
        altura = round(random.uniform(1.5, 2.1), 2)
        peso = round(random.uniform(50, 150), 2)
        idade = random.randint(18, 80)
        sexo = random.choice([True, False])
        data_nascimento = fake.date_of_birth(minimum_age=18, maximum_age=100)
        telefone = fake.random_int(min=10000000, max=99999999)
        email = email_relacionado_ao_nome(nome_completo)
        linha = {
        'nome_completo':nome_completo,
        'altura':altura,
        'peso':peso,
        'idade':idade,
        'sexo':sexo,
        'data_nascimento':data_nascimento,
        'telefone':telefone,
        'email':email
        }
        banco.adicionar_linha(tabela,linha)
banco.consultar(tabela)