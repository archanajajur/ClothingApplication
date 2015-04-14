class Category < ActiveRecord::Base
   	attr_accessible :name,:description,:parent_id,:is_featured,:image,
    :image_file_name,:image_content_type,
   	:image_file_size,:image_updated_at
  	has_many :sub_categories, :class_name => "Category",
    :foreign_key => "parent_id"
    has_many :category_products 
  has_many :products, :through => :category_products 
 	has_attached_file :image,
                    :column => 'image',
                    :styles => { :small => "45x50",:medium => "90x100",:large => "180x200",:xlarge => "270x300",:xxlarge => "360x400"},
                    :default_url => "/images/category/:style.png",
                    :url=>"/assets/category/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/category/:id/:style/:basename.:extension"
                    validates_attachment_content_type :image, :content_type => /\Aimage/

# validates :name,:presence=>true
end
