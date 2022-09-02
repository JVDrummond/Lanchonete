class AddBauruToCardapio < ActiveRecord::Migration[5.2]
  def change
    add_reference :cardapios, :bauru, foreign_key: true
  end
end
