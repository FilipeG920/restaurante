class Prato < ApplicationRecord
    validates :nome,
      presence: { message: " - deve ser preenchido" },
      uniqueness: { message: " - nome já cadastrado" }
end
