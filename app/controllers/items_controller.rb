class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    # @user = current_user
    @item = @user.items.new
  end

  def create
    @user = current_user
    @item = @user.items.new(item_params)
    @item.save

    redirect_to "/users/#{@user.id}/items"
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])
    @item.destroy

    redirect_to "/users/#{@user.id}/items"
  end

  def item_params
    params.require(:item).permit(:name, :price, :category)
  end

end
