25.times do

  user = User.create!(username: Faker::Internet.user_name,
                      password_digest: Faker::Internet.password)

  category = Category.create!(name: Faker::Company.buzzword)

  game = Category.all.sample.games.create!(name: Faker::App.name,
                      image_url: Faker::Company.logo,
                      description: Faker::Lorem.paragraph,
                      min_players:  Faker::Number.between(1, 2),
                      max_players:  Faker::Number.between(3, 10))

  categorization = Category.all.sample.categorizations.create!(game: Game.all.sample)

  review = Game.all.sample.reviews.create!(reviewer: User.all.sample,
                                          title: Faker::Lorem.sentences(1),
                                          body: Faker::Lorem.paragraph,
                                          score: Faker::Number.between(1, 5))

end

50.times do
  friendship = User.all.sample.friendships.create!(friend: User.all.sample)
  ownership = User.all.sample.ownerships.create!(game: Game.all.sample)
end
