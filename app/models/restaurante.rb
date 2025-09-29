class Restaurante < ApplicationRecord
  has_many :qualificacoes
  has_and_belongs_to_many :pratos

  validates :nome, :endereco, :especialidade, presence: true

  validates :nome, uniqueness: {
    scope: :endereco,
    message: "já existe um restaurante com esse nome neste endereço"
  }
end
