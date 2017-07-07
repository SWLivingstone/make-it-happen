class ItemsController < ApplicationController

  def destroy
    @item = Item.find_by(id: params[:id])

    if @item.delete
      flash[:notice] = "Item removed from to-do list"
      redirect_to root_path
    else
      flash[:alert] = "An error has occured while trying to delete an item from the to-do list"
      redirect_to root_path
    end
  end

  def create
    @item = Item.new(user: current_user, name: params[:item][:name])

    if @item.save
      flash[:notice] = "New to-do item created."
      redirect_to root_path
    else
      flash[:alert] = "An error has occured while trying to create to-do item"
      redirect_to root_path
    end
  end
end
