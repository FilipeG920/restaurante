class CreateJoinTablePratosRestaurantes < ActiveRecord::Migration[8.0]
  def change
    create_join_table :pratos, :restaurantes do |t|
      t.index [:prato_id, :restaurante_id]
      t.index [:restaurante_id, :prato_id]
    end
  end
end
