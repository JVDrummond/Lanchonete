class Cardapio < ApplicationRecord
   belongs_to :quantidade
   belongs_to :bauru
   #has_many :bauru
   #has_many :quantidade

end
