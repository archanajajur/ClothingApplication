class DesignerLiked < ActiveRecord::Base
  attr_accessible :designer_id, :user_id
  belongs_to :designer
  belongs_to :user
end
