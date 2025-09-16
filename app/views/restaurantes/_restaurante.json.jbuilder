json.extract! restaurante, :id, :nome, :endereco, :created_at, :updated_at
json.url restaurante_url(restaurante, format: :json)
