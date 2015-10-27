class FriendshipsController < ApplicationController

  def new

  end

  def create
    current_user = User.find(params[:current_user])
    friend = User.find(params[:friend])
    friendship = current_user.friendships.create(friend: friend)
    if friend.save
      redirect_to users_path
    else
      redirect_to '/'
    end
  end

  def index
    @pending_friendships = current_user.friendships.reject(&:accepted).map(&:friend) #DISPLAY ALL PENDING FRIENDSHIPS WHICH ARE NOT ACCEPTED
  end

end

# @accepted_friendships = current_user.friendships.select(&:accepted).map(&:friend)
