class Designer < ActiveRecord::Base
  attr_accessible :name, :description,:city,:state,:country,:image,
  :image_file_name,:image_content_type,
   	:image_file_size,:image_updated_at
  has_many :designer_likeds
  has_many :users, :through=> :designer_likeds
  has_many :products
  	has_attached_file :image,
                    :column => 'image',
                    :styles => { :small => "45x50",:medium => "90x100",:large => "180x200",:xlarge => "270x300",:xxlarge => "360x400"},
                    :default_url => "/images/designer/:style.png",
                    :url=>"/assets/designer/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/designer/:id/:style/:basename.:extension"
                    validates_attachment_content_type :image, :content_type => /\Aimage/
end
