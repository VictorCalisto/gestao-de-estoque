import sql

banco = sql.Banco()
tabela = 'produtos'
produtos = {
    'id':'INTEGER PRIMARY KEY AUTOINCREMENT',
    'nome':'VARCHAR(255)',
    'quantidade':'INTEGER',
    'descricao':'TEXT',
    'disponivel':'BOOLEAN'
}
banco.criar_tabela(tabela,produtos)
produtos = produtos
banco.adicionar_coluna(tabela,'preco','DECIMAL(10, 2)')
produto = {
    'nome':'Tênis Olympikus Eternal',
    'quantidade': 25,
    'descricao':'texto aqui',
    'disponivel':True,
    'preco':299.99
}
banco.adicionar_linha(tabela,produto)
banco.consultar(tabela)
produto_errado = {
    'nome':'Cadastro errado',
    'quantidade': 0,
    'descricao':'',
    'disponivel':False
    #falta o preco
}
banco.adicionar_linha(tabela,produto_errado)
banco.consultar(tabela)
produto_certo={
    'nome':'Tênis Fila Axilus Ace',
    'quantidade': 20,
    'descricao':'texto aqui',
    'disponivel':True,
    'preco':399.99
}
banco.editar_linha(tabela,produto_errado,produto_certo)
banco.consultar(tabela)
produto = {
    'nome':'Cadastro errado'
}
banco.adicionar_linha(tabela,produto_errado)
banco.consultar(tabela,produto)
banco.excluir_linha(tabela,produto)
banco.consultar(tabela)
banco.excluir_coluna(tabela,'disponivel')
banco.consultar(tabela)
banco.excluir_tabela(tabela)
#Agora vai retornar um erro
banco.consultar(tabela) # ATENCAO !!!