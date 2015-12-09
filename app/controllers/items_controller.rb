class ItemsController < ApplicationController

  def new
    @user = current_user
    # @user_id = @user.id
    @item = @user.items.new
  end

  def create
    # items schema references user_id
    @user = current_user
    @item = @user.items.new(item_params)
    @item.save

    redirect_to "/users/#{@user.id}"
  end

  # def destroy
  #   @user = User.find(params[:user_id])
  #   @item = @user.items.find(params[:id])
  #   @item.destroy
  #
  #   redirect_to "/users/#{@user.id}/items"
  # end

  private

  def item_params
    params.require(:item).permit(:name, :price, :category)
  end

end
