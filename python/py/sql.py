import psycopg
import conexao_banco

class Banco():
    def __init__(self,qual_banco:str=''):
        self.conn = conexao_banco.conectar_banco(qual_banco)
        if self.conn is not None:
            self.cursor = self.conn.cursor()
        else:
            print("Não foi possível conectar ao banco de dados.")

    def _executar_sql(self, sql):
        try:
            #Instancia o cursor
            cursor = self.conn.cursor()
            cursor.execute(sql)
            #Caso seja Select
            if sql.strip().upper().startswith("SELECT"):
                rows = cursor.fetchall()
                for row in rows:
                    print(row)
                print('---------------------')
            #Caso seja outra coisa
            else:
                self.conn.commit()
            
            cursor.close()#fecha cursor
        except Exception as e:
            print("Erro na execução do SQL:", e)#tudo errado

    def criar_tabela(self, nome_da_tabela:str, nova_linha:dict):
        try:
            #monta a lista a partir do nova_linha
            colunas = ', '.join(f"{coluna} {tipo}" for coluna, tipo in nova_linha.items())
            #Comando SQL a ser executado no banco
            sql = f"CREATE TABLE {nome_da_tabela} ({colunas});"
            #execucao do comando
            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao criar a tabela:", e)

    def adicionar_coluna(self, nome_da_tabela:str,nome_da_coluna:str,tipo_da_coluna:str,propriedades_da_coluna:str=''):
        try:
            sql = f'''
                ALTER TABLE {nome_da_tabela}
                ADD {nome_da_coluna} {tipo_da_coluna} {propriedades_da_coluna};
                '''
            # sql_exemplo='''
            # ALTER TABLE produtos 
            # ADD descricao VARCHAR(255) NOT NULL;
            # '''

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao adicionar coluna:", e)

    def adicionar_linha(self, nome_da_tabela:str,nova_linha:dict):
        try:
            #nova_linha_exemplo = {'quantidade':2,'nome':'sapato','disponivel':True}

            # Monta a lista de colunas e valores a partir do dicionário
            colunas = ', '.join(nova_linha.keys())
            valores = ', '.join([str(valor) if isinstance(valor, (int, float, bool)) else f"'{valor}'" for valor in nova_linha.values()])

            # Monta a instrução SQL de inserção
            sql = f"INSERT INTO {nome_da_tabela} ({colunas}) VALUES ({valores});"

            # sql_exemplo='''
            # INSERT INTO produtos (quantidade, nome, disponivel)
            # VALUES (2, 'sapato', true);
            # '''

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao adicionar linha:", e)

    def excluir_linha(self,nome_da_tabela:str,filtros:dict):
        try:
            filtro = []
            for coluna, valor in filtros.items():
                #se nao for nulo nem vazio
                if valor is not None and valor != "":
                    if type(valor) == str :
                        #pegue o nome do campo e o valor nele contido
                        filtro.append(f"{coluna} = '{valor}'")
                    else:
                        filtro.append(f"{coluna} = {valor}")

            #converte os vetores em string separadas por virgulas
            filtro = ' AND '.join(filtro)

            #gera o sql que exclui a linha
            sql = f"DELETE FROM {nome_da_tabela} WHERE {filtro}"

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao excluir linha:", e)

    def consultar(self,nome_da_tabela:str,filtros:dict=None):
        try:
            if filtros != None:
    
                filtro = []
                for coluna, valor in filtros.items():
                    #se nao for nulo nem vazio
                    if valor is not None and valor != "":
                        if type(valor) == str :
                            #pegue o nome do campo e o valor nele contido
                            filtro.append(f"{coluna} = '{valor}'")
                        else:
                            filtro.append(f"{coluna} = {valor}")

                #converte os vetores em string separadas por virgulas
                filtro = ' AND '.join(filtro)

                #gera o sql que exclui a linha
                sql= f"SELECT * FROM {nome_da_tabela} WHERE {filtro}"

            else:
                sql= f"SELECT * FROM {nome_da_tabela}"


            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao consultar tabela:", e)
    
    def editar_linha(self,nome_da_tabela:str,filtros:dict,novos_valores:dict):
        try:    
            filtro = []
            for coluna, valor in filtros.items():
                #se nao for nulo nem vazio
                if valor is not None and valor != "":
                    if type(valor) == str :
                        #pegue o nome do campo e o valor nele contido
                        filtro.append(f"{coluna} = '{valor}'")
                    else:
                        filtro.append(f"{coluna} = {valor}")

            novo_valor=[]
            for coluna, valor in novos_valores.items():
                #se nao for nulo nem vazio
                if type(valor) == str :
                    #pegue o nome do campo e o valor nele contido
                    novo_valor.append(f"{coluna} = '{valor}'")
                else:
                    novo_valor.append(f"{coluna} = {valor}")

            #converte os vetores em string separadas por virgulas
            filtro = ' AND '.join(filtro)
            novo_valor = ' , '.join(novo_valor)


            #gera o sql que exclui a linha
            sql= f"UPDATE {nome_da_tabela} SET {novo_valor} WHERE {filtro};"

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao editar linha:", e)

    def excluir_coluna(self,nome_da_tabela:str,nome_da_coluna:str):
        try:    
            sql = f"ALTER TABLE {nome_da_tabela} DROP COLUMN {nome_da_coluna};"

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao editar linha:", e)

    def excluir_tabela(self,nome_da_tabela:str):
        try:    
            sql = f"DROP TABLE IF EXISTS {nome_da_tabela};"

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao excluir tabela:", e)

        try:    
            sql=f"UPDATE {nome_da_tabela} SET {coluna_copia} = {coluna_copiada};"

            self._executar_sql(sql)
        except Exception as e:
            print("Erro ao copiar a coluna:", e)