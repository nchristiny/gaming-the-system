class OwnershipsController < ApplicationController

  def new
  end

  def create
    current_user = User.find(params[:current_user])
    game = Game.find(params[:game])
    ownership = current_user.ownerships.create(game: game)
    if ownership.save
      redirect_to games_path
    else
      redirect_to games_path
    end
  end
end
