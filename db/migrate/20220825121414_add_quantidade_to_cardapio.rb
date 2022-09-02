class AddQuantidadeToCardapio < ActiveRecord::Migration[5.2]
  def change
    add_reference :cardapios, :quantidade, foreign_key: true
  end
end
