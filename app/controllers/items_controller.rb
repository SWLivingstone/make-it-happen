class ItemsController < ApplicationController

  def create
    @item = Item.new(user: current_user, name: params[:item][:name])

    if @item.save
      flash[:notice] = "New to-do item created."
      redirect_to root_path
    else
      flash[:alert] = "An error has occure while trying to create to-do item"
      redirect_to root_path
    end
  end
end
