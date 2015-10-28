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
    p "******55555****************************"
    p @user.id
    p "**********************************55555"
    end
  end

  def update
    Friendship.find(params[:friendship_id]).update_attribute(:accepted, true)
    redirect_to "/users/#{params[:user_id]}/friendships"
  end

  def index
    @user = current_user
    @pending_friendships = Friendship.all.where(friend_id: current_user.id).reject(&:accepted)
  end

end

# @accepted_friendships = current_user.friendships.select(&:accepted).map(&:friend)
