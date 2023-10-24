# Produtos
produto1 = Produto.create(nome: 'Tênis Olímpicos Branco', descricao: 'Um tênis esportivo para atletas e amantes do esporte.')
produto2 = Produto.create(nome: 'Sapato Saccarpan Vermelho', descricao: 'Um elegante sapato social em vermelho.')
produto3 = Produto.create(nome: 'Sapatilha Primavera Floral', descricao: 'Uma sapatilha feminina com estampa floral perfeita para a primavera.')
produto4 = Produto.create(nome: 'Botas Aventureiro em Couro', descricao: 'Botas robustas para os amantes da aventura e do ar livre.')
produto5 = Produto.create(nome: 'Sandália de Praia Sunset', descricao: 'Uma sandália confortável para desfrutar de um dia de sol na praia.')

# Funcionários
funcionario1 = Funcionario.create(nome: 'João Silva', cargo: 'Vendedor', contato: 'joao@lojadesapatos.com')
funcionario2 = Funcionario.create(nome: 'Maria Santos', cargo: 'Vendedora', contato: 'maria@lojadesapatos.com')
funcionario3 = Funcionario.create(nome: 'Pedro Ferreira', cargo: 'Gerente de Loja', contato: 'pedro@lojadesapatos.com')
funcionario4 = Funcionario.create(nome: 'Ana Rodrigues', cargo: 'Caixa', contato: 'ana@lojadesapatos.com')
funcionario5 = Funcionario.create(nome: 'Carlos Almeida', cargo: 'Estoquista', contato: 'carlos@lojadesapatos.com')

# Clientes
cliente1 = Cliente.create(nome: 'Ana Pereira', contato: 'ana@gmail.com')
cliente2 = Cliente.create(nome: 'Carlos Santos', contato: 'carlos@hotmail.com')
cliente3 = Cliente.create(nome: 'Lúcia Ferreira', contato: 'lucia@yahoo.com')
cliente4 = Cliente.create(nome: 'Mariana Silva', contato: 'mariana@gmail.com')
cliente5 = Cliente.create(nome: 'Rafael Almeida', contato: 'rafael@hotmail.com')

# Fornecedores
fornecedor1 = Fornecedor.create(nome: 'Fábrica de Calçados Star', contato: 'star@example.com')
fornecedor2 = Fornecedor.create(nome: 'Distribuidora de Couro Lux', contato: 'lux@example.com')
fornecedor3 = Fornecedor.create(nome: 'Importadora de Solas Solaris', contato: 'solaris@example.com')
fornecedor4 = Fornecedor.create(nome: 'Fábrica de Sapatilhas Charme', contato: 'charme@example.com')
fornecedor5 = Fornecedor.create(nome: 'Atacadista de Sapatos Top Style', contato: 'topstyle@example.com')

# Pedidos
pedido1 = Pedido.create(fornecedor: fornecedor1, produto: produto1, quantidade: rand(60..100), data_pedido: rand(3.months.ago..2.month.ago))
pedido2 = Pedido.create(fornecedor: fornecedor2, produto: produto2, quantidade: rand(60..100), data_pedido: rand(3.months.ago..2.month.ago))
pedido3 = Pedido.create(fornecedor: fornecedor3, produto: produto3, quantidade: rand(60..100), data_pedido: rand(3.months.ago..2.month.ago))
pedido4 = Pedido.create(fornecedor: fornecedor4, produto: produto4, quantidade: rand(60..100), data_pedido: rand(3.months.ago..2.month.ago))
pedido5 = Pedido.create(fornecedor: fornecedor5, produto: produto5, quantidade: rand(60..100), data_pedido: rand(3.months.ago..2.month.ago))

# Vendas
venda1 = Venda.create(cliente: cliente1, produto: produto1, quantidade: rand(1..40), data_venda: rand(1.months.ago...1.day.ago))
venda2 = Venda.create(cliente: cliente2, produto: produto2, quantidade: rand(1..40), data_venda: rand(1.months.ago...1.day.ago))
venda3 = Venda.create(cliente: cliente3, produto: produto3, quantidade: rand(1..40), data_venda: rand(1.months.ago...1.day.ago))
venda4 = Venda.create(cliente: cliente4, produto: produto4, quantidade: rand(1..40), data_venda: rand(1.months.ago...1.day.ago))
venda5 = Venda.create(cliente: cliente5, produto: produto5, quantidade: rand(1..40), data_venda: rand(1.months.ago...1.day.ago))

# Estoques
estoque1 = Estoque.create(produto: produto1, quantidade: (pedido1.quantidade - venda1.quantidade))
estoque2 = Estoque.create(produto: produto2, quantidade: (pedido2.quantidade - venda2.quantidade))
estoque3 = Estoque.create(produto: produto3, quantidade: (pedido3.quantidade - venda3.quantidade))
estoque4 = Estoque.create(produto: produto4, quantidade: (pedido4.quantidade - venda4.quantidade))
estoque5 = Estoque.create(produto: produto5, quantidade: (pedido5.quantidade - venda5.quantidade))

# Movimentados
movimento1 = Movimentacao.create(quantidade: estoque1.quantidade, produto: estoque1.produto)
movimento2 = Movimentacao.create(quantidade: estoque2.quantidade, produto: estoque2.produto)
movimento3 = Movimentacao.create(quantidade: estoque4.quantidade, produto: estoque4.produto)
movimento4 = Movimentacao.create(quantidade: estoque5.quantidade, produto: estoque5.produto)

# Hitoricos
historico1 = Historico.create(localizacao: "01:4:I", transacao_por:funcionario3.id, tipo: 'Pedido', id_relacionado: pedido1.id, data: pedido1.data_pedido, descricao: "Produto recebido e vistoriado. Sem avarias.")
historico2 = Historico.create(localizacao: "02:4:I", transacao_por:funcionario3.id, tipo: 'Pedido', id_relacionado: pedido2.id, data: pedido2.data_pedido, descricao: "Produto recebido e vistoriado. Sem avarias.")
historico3 = Historico.create(localizacao: "03:4:I", transacao_por:funcionario3.id, tipo: 'Pedido', id_relacionado: pedido3.id, data: pedido3.data_pedido, descricao: "Produto recebido e vistoriado. Sem avarias.")
historico4 = Historico.create(localizacao: "04:4:I", transacao_por:funcionario3.id, tipo: 'Pedido', id_relacionado: pedido4.id, data: pedido4.data_pedido, descricao: "Produto recebido e vistoriado. Sem avarias.")
historico5 = Historico.create(localizacao: "05:4:I", transacao_por:funcionario3.id, tipo: 'Pedido', id_relacionado: pedido5.id, data: pedido5.data_pedido, descricao: "Produto recebido e vistoriado. Sem avarias.")
historico6 = Historico.create(localizacao: "01:4:I", transacao_por:funcionario1.id, tipo: 'Venda', id_relacionado: venda1.id, data: venda1.data_venda, descricao: "Pago e retirado na loja.")
historico7 = Historico.create(localizacao: "02:4:I", transacao_por:funcionario1.id, tipo: 'Venda', id_relacionado: venda2.id, data: venda2.data_venda, descricao: "Pago e retirado na loja.")
historico8 = Historico.create(localizacao: "03:4:I", transacao_por:funcionario1.id, tipo: 'Venda', id_relacionado: venda3.id, data: venda3.data_venda, descricao: "Pago e retirado na loja.")
historico9 = Historico.create(localizacao: "04:4:I", transacao_por:funcionario2.id, tipo: 'Venda', id_relacionado: venda4.id, data: venda4.data_venda, descricao: "Pago e retirado na loja.")
historico10 = Historico.create(localizacao:"05:4:I", transacao_por:funcionario2.id, tipo: 'Venda', id_relacionado: venda5.id, data: venda5.data_venda, descricao: "Pago e retirado na loja.")

historico9 = Historico.create(localizacao: "01:4:I", transacao_por:funcionario5.id, tipo: 'Movimentado', id_relacionado: movimento1.id, data: rand(2.months.ago..1.month.ago), descricao: "Movido para os fundos da loja.")
historico1 = Historico.create(localizacao: "04:4:I", transacao_por:funcionario5.id, tipo: 'Movimentado', id_relacionado: movimento2.id, data: rand(2.months.ago..1.month.ago), descricao: "Movido para a frente da loja.")
historico10 = Historico.create(localizacao:"02:4:I", transacao_por:funcionario5.id, tipo: 'Movimentado', id_relacionado: movimento3.id, data: rand(2.months.ago..1.month.ago), descricao: "Movido para os fundos da loja.")
historico2 = Historico.create(localizacao: "05:4:I", transacao_por:funcionario5.id, tipo: 'Movimentado', id_relacionado: movimento4.id, data: rand(2.months.ago..1.month.ago), descricao: "Movido para a frente da loja.")
