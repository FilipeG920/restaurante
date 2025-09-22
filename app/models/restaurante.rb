class Restaurante < ApplicationRecord
  validates :nome, :endereco, :especialidade, presence: true

  validates :nome, uniqueness: {
    scope: :endereco,
    message: "já existe um restaurante com esse nome neste endereço"
  }
end
