class SessionsController < ApplicationController

  # copied/pasta from BMock/NChristiny sinatra-to-rails-pick-1-of-3-challenge/hacker-news
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @message = 'Invalid username/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to welcome_index_path
  end
end
