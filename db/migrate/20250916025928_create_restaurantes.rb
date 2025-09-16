class CreateRestaurantes < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :endereco

      t.timestamps
    end
  end
end
