class ReviewsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new
    p params
  end

  def create
    @review = Game.find(params[:game_id]).reviews.new(review_params)
    @reviewer = current_user
    if @review.save
      redirect_to game_path(Game.find(params[:game_id]))
    else
      render 'new'
    end

  end


  private

  def review_params
    params.require(:review).permit(:score, :title, :body)
  end

end
