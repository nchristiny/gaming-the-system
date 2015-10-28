class FriendsController < ApplicationController
  def index
    unless is_friend?(User.find(params[:user_id])) || (current_user == User.find(params[:user_id]))
      redirect_to '/'
    end
    @friends = User.find(params[:user_id]).friends
  end
end
