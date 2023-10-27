import conexao_banco

class BancoDeTeste:
    def __init__(self):
        self.conn = conexao_banco.conectar_banco()
        if self.conn is not None:
            self.cursor = self.conn.cursor()
        else:
            print("Não foi possível conectar ao banco de dados.")

    def execute_query(self, query):
        try:
            self.cursor.execute(query)


            rows = self.cursor.fetchall()  # Recupera todos os resultados da consulta
            if rows:
                for row in rows:
                    print(row)  # Exibe cada linha da consulta
            else:
                print("Nenhum resultado encontrado.")


            self.conn.commit()
            print("Query successful")
        except Exception as err:
            print(f"Error: '{err}'")

consulta = '''
SELECT nome
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