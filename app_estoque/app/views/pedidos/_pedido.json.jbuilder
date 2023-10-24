json.extract! pedido, :id, :fornecedor_id, :produto_id, :quantidade, :data_pedido, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
