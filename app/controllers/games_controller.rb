class GamesController < ApplicationController

  def index
    @games = Game.paginate(:page => params[:page], :per_page => 10)
  end

  def newest
     @games = Game.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  def most_owned
    @games = Game.all.sort{|a,b| b.ownerships.length <=> a.ownerships.length}
  end

  def highest_rated

  end

  def show
    @game = Game.find(params[:id])
  end

end
