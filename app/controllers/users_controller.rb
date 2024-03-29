class UsersController < ApplicationController

  def index
    @users = User.all

  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    unless is_friend?(@user) || (current_user == @user)
      redirect_to '/'
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:username,:password)
    end

end
