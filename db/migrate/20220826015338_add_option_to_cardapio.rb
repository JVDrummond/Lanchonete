class AddOptionToCardapio < ActiveRecord::Migration[5.2]
  def change
    add_reference :cardapios, :option, foreign_key: true
  end
end
