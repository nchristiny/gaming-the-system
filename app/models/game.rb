class Game < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :reviewer
  has_many :ownerships
  has_many :owners, through: :ownerships, source: :owner
end
