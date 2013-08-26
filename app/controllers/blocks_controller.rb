class BlocksController < ApplicationController
  def new
     @block = Block.new
  end

  def show
     @block = Block.find(params[:user_id])
  end

  def index
  end

  def create
    @block = current_user.block_towers.build(params[:block])
    if @block.save
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def edit
  end

  def update
    if @block.update_attributes(params[:block])
      redirect_to @block
    else
      render 'edit'
    end
  end

  def destroy
  end
end
