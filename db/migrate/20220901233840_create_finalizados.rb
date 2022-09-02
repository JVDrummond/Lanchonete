class CreateFinalizados < ActiveRecord::Migration[5.2]
  def change
    create_table :finalizados do |t|
      t.string :pedido

      t.timestamps
    end
  end
end
