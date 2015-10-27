class WelcomeController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      @friends_recent_ownerships = @user.friends.map(&:ownerships).sort {|a,b| a.created_at <=> b.created_at}.last(5)
      @friends_recent_reviews = @user.friends.map(&:reviews).sort {|a,b| a.created_at <=> b.created_at}.last(5)
    end
  end

end
