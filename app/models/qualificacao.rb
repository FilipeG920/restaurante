class Qualificacao < ApplicationRecord
  belongs_to :cliente
  belongs_to :restaurante

  validates :cliente_id, :restaurante_id, presence: true
  validates_associated :cliente, :restaurante
  
  validates :nota,
    presence: { message: " - deve ser preenchido" },
    numericality: {
      greater_than_or_equal_to: 0,
      less_than_or_equal_to: 10,
      message: "- deve ser um número entre 0 e 10"
    }

  validates :valor_gasto,
    presence: { message: " - deve ser preenchido" },
    numericality: {
      greater_than: 0,
      message: " - deve ser um número maior que 0"
    }
end
