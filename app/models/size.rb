class Size < ActiveRecord::Base
   attr_accessible :product_id, :quantity, :price, :sizes
   belongs_to :product
    has_many :product_saveds
  
end
