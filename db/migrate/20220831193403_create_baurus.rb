class CreateBaurus < ActiveRecord::Migration[5.2]
  def change
    create_table :baurus do |t|
      t.string :bauru

      t.timestamps
    end
  end
end
