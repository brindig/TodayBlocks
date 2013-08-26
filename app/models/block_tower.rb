# == Schema Information
#
# Table name: block_towers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BlockTower < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :blocks, :order => :position
  belongs_to :user
end
