25.times do

  user = User.create!(username: Faker::Internet.user_name,
                      password_digest: Faker::Internet.password,
                      created_at: Faker::Time.between(500.days.ago, Time.now, :all))

  category = Category.create!(name: Faker::Company.buzzword)

  game = Category.all.sample.games.create!(name: Faker::App.name,
                      image_url: Faker::Company.logo,
                      description: Faker::Lorem.paragraph,
                      min_players:  Faker::Number.between(1, 2),
                      max_players:  Faker::Number.between(3, 10),
                      created_at: Faker::Time.between(500.days.ago, Time.now, :all))

  categorization = Category.all.sample.categorizations.create!(game: Game.all.sample)

  review = Game.all.sample.reviews.create!(reviewer: User.all.sample,
                                          title: Faker::Hacker.say_something_smart,
                                          body: Faker::Hacker.say_something_smart,
                                          score: Faker::Number.between(1, 5),
                                          created_at: Faker::Time.between(500.days.ago, Time.now, :all))

end

50.times do
  friendship = User.all.sample.friendships.create!(friend: User.all.sample,
                                                  created_at: Faker::Time.between(500.days.ago, Time.now, :all))
  ownership = User.all.sample.ownerships.create!(game: Game.all.sample,
                                                created_at: Faker::Time.between(500.days.ago, Time.now, :all))
end



# real games go here

game = Category.all.sample.games.create!(name: "Checkers",
                    image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/International_draughts.jpg/240px-International_draughts.jpg",
                    description: "A game about jumping and kings",
                    min_players:  1,
                    max_players:  2,
                    created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: Faker::App.name,
                image_url: Faker::Company.logo,
                description: Faker::Lorem.paragraph,
                min_players:  Faker::Number.between(1, 2),
                max_players:  Faker::Number.between(3, 10),
                created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: Faker::App.name,
              image_url: Faker::Company.logo,
              description: Faker::Lorem.paragraph,
              min_players:  Faker::Number.between(1, 2),
              max_players:  Faker::Number.between(3, 10),
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: Faker::App.name,
              image_url: Faker::Company.logo,
              description: Faker::Lorem.paragraph,
              min_players:  Faker::Number.between(1, 2),
              max_players:  Faker::Number.between(3, 10),
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: Faker::App.name,
              image_url: Faker::Company.logo,
              description: Faker::Lorem.paragraph,
              min_players:  Faker::Number.between(1, 2),
              max_players:  Faker::Number.between(3, 10),
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: Faker::App.name,
              image_url: Faker::Company.logo,
              description: Faker::Lorem.paragraph,
              min_players:  Faker::Number.between(1, 2),
              max_players:  Faker::Number.between(3, 10),
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

