import psycopg
import sqlite3


# Configurações do banco de dados
#app => aplicacao
db_pg_app = { 
    "dbname": "db_estoque",
    "host": "postgres",
    "password": "",
    "port": "5432",
    "user": "postgres"
}
#teste => testa banco postgres
db_pg_teste = {
    "dbname": "postgres",
    "host": "postgres",
    "password": "",
    "port": "5432",
    "user": "postgres"
}
#sqlite => para a aula com sqlite3
db_sqlite3 = "Sqlite3"
    
def conectar_banco(parametro):
    try:
        if parametro == 'app':
            conn = psycopg.connect(**db_pg_teste)
        elif parametro == 'teste':
            conn = psycopg.connect(**db_pg_app)
        else:
            conn = sqlite3.connect(db_sqlite3)
        return conn
    except Exception as e:
        print("Erro na conexão com o banco de dados:", e)
        return None
    # finally:
    #     conn.close()