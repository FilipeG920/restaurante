class Prato < ApplicationRecord
  has_and_belongs_to_many :restaurantes
  has_one :receita

  validates :nome,
    presence: { message: " - deve ser preenchido" },
    uniqueness: { message: " - nome já cadastrado" }

  validate :pelo_menos_um_restaurante

  private

  def pelo_menos_um_restaurante
    if restaurantes.empty?
      errors.add(:restaurantes, "deve haver ao menos um restaurante")
    end
  end
end
