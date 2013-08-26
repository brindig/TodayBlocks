class BlockTowersController < ApplicationController
  def new
     @block_tower = BlockTower.new
  end

  def show
     @block_tower = BlockTower.find(params[:user_id])
  end

  def index
  end

  def create
    @block_tower = current_user.block_towers.build(params[:block_tower])
    if @block_tower.save
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def edit
  end

  def update
    if @block_tower.update_attributes(params[:block_tower])
      redirect_to @block_tower
    else
      render 'edit'
    end
  end

  def destroy
  end
end
