class AddEspecialidadeToRestaurantes < ActiveRecord::Migration[8.0]
  def change
    add_column :restaurantes, :especialidade, :string
  end
end
