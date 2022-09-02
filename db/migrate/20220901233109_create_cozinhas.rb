class CreateCozinhas < ActiveRecord::Migration[5.2]
  def change
    create_table :cozinhas do |t|
      t.string :pedido
      t.string :id_pedido

      t.timestamps
    end
  end
end
