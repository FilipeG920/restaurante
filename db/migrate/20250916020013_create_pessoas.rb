class CreatePessoas < ActiveRecord::Migration[8.0]
  def change
    create_table :pessoas do |t|
      t.string :nome, limit: 80
      t.date :data_de_nascimento
      t.float :altura
      t.string :endereco

      t.timestamps
    end
  end
end
