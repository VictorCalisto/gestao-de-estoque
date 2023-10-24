import psycopg2

# Configurações do banco de dados
db_config = {
    "host": "postgres",  # Use o nome do serviço definido no Docker Compose
    "database": "db_estoque",  # Nome do banco de dados
    "user": "postgres",  # Seu nome de usuário
    "password": ""  # Sua senha (se necessário)
}

    
def conectar_banco():
    try:
        conn = psycopg2.connect(**db_config)
        return conn
    except Exception as e:
        print("Erro na conexão com o banco de dados:", e)
        return None

class BancoDeTeste:
    def __init__(self):
        self.conn = conectar_banco()
        if self.conn is not None:
            self.cursor = self.conn.cursor()
        else:
            print("Não foi possível conectar ao banco de dados.")

    def execute_query(self, query):
        try:
            self.cursor.execute(query)
            self.conn.commit()
            print("Query successful")
        except Exception as err:
            print(f"Error: '{err}'")

consulta = '''
USE db_estoque
SELECT produtos.nomes
FROM produtos
'''
banco = BancoDeTeste()
banco.execute_query(consulta)

# def criar_banco():

# def criar_schema():

# def criar_tabela():

# def adicionar_linha():

# def adicionar_coluna():

# def remover_linha():

# def remover_coluna():