json.extract! funcionario, :id, :nome, :cargo, :contato, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
