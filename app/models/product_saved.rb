
class ProductSaved < ActiveRecord::Base
  attr_accessible :product_id, :user_id, :size_id, :qty_selected
  belongs_to :product
  belongs_to :user
  belongs_to :size
  # validates :qty_selected, :presence=>true
end
