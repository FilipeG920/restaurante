class Cliente < ApplicationRecord
  validates :nome, presence: { message: " - deve ser preenchido" }
  validates :nome, uniqueness: { message: " - nome já cadastrado" }

  validates :idade, numericality: {
    greater_than: 0,
    less_than: 100,
    message: " - deve ser um número entre 0 e 100"
  }

  
end
