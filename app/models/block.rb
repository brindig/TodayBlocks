# == Schema Information
#
# Table name: blocks
#
#  id             :integer          not null, primary key
#  block_tower_id :integer
#  position       :integer
#  name           :string(255)
#  time           :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Block < ActiveRecord::Base
  attr_accessible :block_tower_id, :name, :position, :time

belongs_to :block_tower

acts_as_list :scope => :block_tower

end
