json.extract! venda, :id, :cliente_id, :produto_id, :quantidade, :data_venda, :created_at, :updated_at
json.url venda_url(venda, format: :json)
