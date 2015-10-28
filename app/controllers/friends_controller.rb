class FriendsController < ApplicationController
  def index
    unless is_friend?(User.find(params[:user_id])) || (current_user == User.find(params[:user_id]))
      redirect_to '/'
    end
    @friends = current_user.friends
    # @friends = User.find(params[:user_id]).friendships.select(&:accepted).map(&:friend)
  end
end
