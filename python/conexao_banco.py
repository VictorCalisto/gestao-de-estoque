import psycopg

# Configurações do banco de dados
db_config = {
    "dbname": "db_estoque",
    "host": "postgres",
    "password": "",
    "port": "5432",
    "user": "postgres"
}

    
def conectar_banco():
    try:
        conn = psycopg.connect(**db_config)
        return conn
    except Exception as e:
        print("Erro na conexão com o banco de dados:", e)
        return None
    # finally:
    #     conn.close()