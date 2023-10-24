json.extract! estoque, :id, :produto_id, :quantidade, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
