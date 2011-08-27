class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to:user
  validates :content, :presence => true, :length => {:maximum => 160 }
  validates :user_id, :presence => true
  
  default_scope :order => 'microposts.created_at DESC' #table_name.attribute sort_order
end

# == Schema Information
#
# Table name: microposts
#
#  id         :integer(4)      not null, primary key
#  content    :string(255)
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

