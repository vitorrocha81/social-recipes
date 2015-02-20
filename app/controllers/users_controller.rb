class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
   end

  def edit
  end

  def new
    @user = User.new
  end

  def update
  end

  def create
     @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :cidade, :email, :facebook, :twitter, :favorite_cuisine, :password_confirmation, :password) 
  end
end
