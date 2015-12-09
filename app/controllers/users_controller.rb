class UsersController < ApplicationController

  # Users only have access to their personal list of items.
  # before_action :authorize_strict, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @item = Item.new
    @user_id = @user.id
    # binding.pry
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to "/users/#{user.id}"
    else
      redirect_to "users/new"
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation
    )
  end

end
