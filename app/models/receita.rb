class Receita < ApplicationRecord
  belongs_to :prato

  validates :prato_id, presence: true
  validates_associated :prato

  validates :conteudo,
    presence: { message: " - deve ser preenchido"}
end
