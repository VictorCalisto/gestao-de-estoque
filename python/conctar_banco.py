import pg8000

# Configurações do banco de dados
db_config = {
    "host": "postgres",  # Use o nome do serviço definido no Docker Compose
    "database": "db_estoque",  # Nome do banco de dados
    "user": "postgres",  # Seu nome de usuário
    "password": ""  # Sua senha (se necessário)
}

def conectar_banco():
    try:
        conn = pg8000.connect(**db_config)
        return conn
    except Exception as e:
        print("Erro na conexão com o banco de dados:", e)
        return None
