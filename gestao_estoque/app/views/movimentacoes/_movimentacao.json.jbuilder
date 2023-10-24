json.extract! movimentacao, :id, :quantidade, :produto_id, :created_at, :updated_at
json.url movimentacao_url(movimentacao, format: :json)
