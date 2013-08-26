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

require 'spec_helper'

describe Block do

  let(:block_tower) { FactoryGirl.create(:block_tower) }
  before do
    # This code is wrong!
    @block = Block.new(name: "Lorem ipsum", 
                       block_tower_id: block_tower.id, 
                       position: 1, 
                       time: 1 )
  end

  subject { @block }

  it { should respond_to(:name) }
  it { should respond_to(:block_tower_id) }
  it { should respond_to(:time) }
  it { should respond_to(:position) }


end
