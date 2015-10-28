class User < ActiveRecord::Base
  has_secure_password
  has_many :ownerships, foreign_key: 'owner_id'
  has_many :games, through: :ownerships
  has_many :reviews, foreign_key: 'reviewer_id'
  has_many :reviewed_games, through: :reviews, source: :game
  has_many :friendships
  validates :username, presence:true, uniqueness: true
  # has_many :friends, through: :friendships
  def friends
    User.
      joins('INNER JOIN friendships ON friendships.user_id = users.id OR friendships.friend_id = users.id').
      where('(friendships.user_id = :user_id OR friendships.friend_id = :user_id) AND users.id != :user_id AND friendships.accepted = true', user_id: self.id)
    # User.joins(:friendships).where('friendships.user_id = ? OR friendships.friend_id = ?', self.id, self.id)
  end
end


# Lucas' scratch SQL work:
# User.connection.select_rows(<<-SQL, 1)
#   SELECT *
#   FROM users u
#   INNER JOIN friendships f ON f.user_id = u.id OR f.friend_id = u.id
#   WHERE ((f.user_id = 2 OR f.friend_id = 2) AND u.id != 2);
# SQL
