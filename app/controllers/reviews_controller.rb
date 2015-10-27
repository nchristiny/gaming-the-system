class ReviewsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new
    p params
  end

  def create
    game = Game.find(params[:game_id])
    @review = game.reviews.new(review_params.merge(reviewer: current_user))
    if @review.save
      redirect_to game_path(game)
    else
      render 'new'
    end

  end


  private

  def review_params
    params.require(:review).permit(:score, :title, :body)
  end

end
