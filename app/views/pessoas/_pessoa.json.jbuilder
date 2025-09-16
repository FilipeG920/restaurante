json.extract! pessoa, :id, :nome, :data_de_nascimento, :altura, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
