class Game < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :reviewer
  has_many :ownerships
  has_many :owners, through: :ownerships, source: :owner

  def average
    if self.reviews.length > 0
      return self.reviews.map(&:score).reduce(:+)/self.reviews.length
    else
      return "no reviews yet"
    end
  end

end
