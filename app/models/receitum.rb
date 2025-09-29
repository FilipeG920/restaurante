class Receitum < ApplicationRecord
  validates :conteudo,
    presence: { message: " - deve ser preenchido"}
end
