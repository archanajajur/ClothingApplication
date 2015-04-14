class Product < ActiveRecord::Base
 attr_accessible :name, :description,:sku,:image,:price,:is_featured, :designer_id,
 :image_file_name,:image_content_type,
   	:image_file_size,:image_updated_at
    has_many :category_products
 has_many :categories, :through => :category_products 
 belongs_to :designer
 has_many :product_saveds
 has_many :sizes
 has_attached_file :image,
                    :column => 'image',
                    :styles => { :small => "45x50",:medium => "90x100",:large => "180x200",:xlarge => "270x300",:xxlarge => "360x400"},
                    :default_url => "/images/product/:style.png",
                    :url=>"/assets/product/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/product/:id/:style/:basename.:extension"
                    validates_attachment_content_type :image, :content_type => /\Aimage/
before_create :generate_desig
 def generate_desig
 	if self.sku.nil? and self.new_record? 
 		self.sku=random_string(16)
 	end
 end
def random_string(length)
	chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ123456789'
	random = ''
	length.times { random << chars[rand(chars.size)] }
 return random

end

end
