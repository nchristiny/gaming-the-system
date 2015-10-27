200.times do
  user = User.create!(username: Faker::Internet.user_name,
                      password_digest: Faker::Internet.password,
                      created_at: Faker::Time.between(500.days.ago, Time.now, :all))
end

category = Category.create!(name: "Acting Game")
category = Category.create!(name: "Betting/Wagering Game")
category = Category.create!(name: "Card Game")
category = Category.create!(name: "Role Playing Game")
category = Category.create!(name: "Player Elimination Game")
category = Category.create!(name: "Area Control Game")
category = Category.create!(name: "Memory Game")
category = Category.create!(name: "Simulation Game")
category = Category.create!(name: "Tile Placement Game")
category = Category.create!(name: "Auction/Bidding Game")
category = Category.create!(name: "Roll, Spin, and Move Game")

200.times do
  game = Category.all.sample.games.create!(name: Faker::App.name,
                                          image_url: Faker::Avatar.image("180x180"),
                                          description: Faker::Lorem.sentence,
                                          min_players: 2,
                                          max_players: Faker::Number.between(3, 14),
                                          created_at: Faker::Time.between(500.days.ago, Time.now, :all))
end



game = Category.all.sample.games.create!(name: "Checkers",
                    image_url: "http://www.listchallenges.com/f/items/30f2a75f-3b35-4407-953d-1492b582fd2e.jpg",
                    description: "A game about jumping and kings",
                    min_players:  2,
                    max_players:  2,
                    created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Chess",
                image_url: "http://www.listchallenges.com/f/items/c800b60a-0a5e-4857-8934-65647f44acd0.jpg",
                description: "Rooks and pawns and queens and bishops and horses",
                min_players:  2,
                max_players:  2,
                created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Monopoly",
              image_url: "http://www.listchallenges.com/f/items/0ee2f77d-4c47-46ad-b8fc-1e20a5cef8c4.jpg",
              description: "Capitalism Simulator",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Scrabble",
              image_url: "http://www.listchallenges.com/f/items/a0267ced-b78a-466e-bf1a-ad7392f495f9.jpg",
              description: "Can you spell? Doesn't really matter. Memorize a bunch of two letter bullshit words and win!",
              min_players:  1,
              max_players:  6,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Risk",
              image_url: "http://www.listchallenges.com/f/items/bacfc78d-4389-4044-83e2-398497343f14.jpg",
              description: "Ukraine is game to you?",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Clue",
              image_url: "http://www.listchallenges.com/f/items/f85535e2-8fc1-4895-a0ac-88a632e23882.jpg",
              description: "Whodunit?",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Ticket to Ride",
              image_url: "http://www.listchallenges.com/f/items/5828c36b-6e87-462a-966f-89dd4790f4fb.jpg",
              description: "A game about trains! Yawn!",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Uno",
              image_url: "http://www.listchallenges.com/f/items/c733f952-294a-43d9-861a-a15af6426bc6.jpg",
              description: "Uno es el número más solitario",
              min_players:  2,
              max_players:  8,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Battleship",
              image_url: "http://image.tmdb.org/t/p/w185/8R80QyDq7MCuBD8zMsNlminyXxy.jpg",
              description: "You sunk my battleship blah blah blah",
              min_players:  2,
              max_players:  2,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Apples to Apples",
              image_url: "http://www.listchallenges.com/f/items/c284f3d4-a0b6-4884-865d-345bf2193548.jpg",
              description: "It's like Cards Against Humanity for squares",
              min_players:  2,
              max_players:  12,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Yahtzee",
              image_url: "http://www.listchallenges.com/f/items/ff53c940-8bc8-4840-a0fa-6137e411aa54.jpg",
              description: "No clue how you play this game, but it involves dice and yelling",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Trivial Pursuit",
              image_url: "http://www.listchallenges.com/f/items/010ee395-eccd-4cf4-9f6d-db66864a7470.jpg",
              description: "The Moops",
              min_players:  2,
              max_players:  12,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Stratego",
              image_url: "http://www.listchallenges.com/f/items/de13cdbd-2954-4602-880e-9e357b9dd314.jpg",
              description: "The box shows guns, so you're excited, but then you open the box and it's just dice...?",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Sorry!",
              image_url: "http://www.listchallenges.com/f/items/2cfb799b-101d-4a2c-9ac5-83f5763a148a.jpg",
              description: "Apologize to me. Apologize to her. Apologize to everyone.",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Pictionary",
              image_url: "http://www.listchallenges.com/f/items/a9e27698-d704-49ad-858a-2a0380af85ad.jpg",
              description: "Remember Draw Something? It's that.",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Connect Four",
              image_url: "http://www.listchallenges.com/f/items/49c43589-48e1-4d91-a8bb-f85f8678e7a3.jpg",
              description: "Fucked up tic-tac-toe",
              min_players:  2,
              max_players:  2,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Axis & Allies",
              image_url: "http://www.listchallenges.com/f/items/3920a1c8-4590-4968-a4d0-626c04a6cc99.jpg",
              description: "World War 2 is back, but this time... it's fun!",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Life",
              image_url: "http://www.listchallenges.com/f/items/86c568af-cd51-4913-bac2-905ecaf49ce4.jpg",
              description: "Just like real life, you are randomly assigned a socioeconomic class and then you drive around in a car until you die",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Candyland",
              image_url: "http://www.listchallenges.com/f/items/366ee3ea-2e98-49ca-aa55-25775cc16fa1.jpg",
              description: "Buncha candy n shit",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Trouble",
              image_url: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash3/71079_62362916922_3392013_n.jpg",
              description: "Not as fun as actually getting in trouble",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Chinese Checkers",
              image_url: "https://fbexternal-a.akamaihd.net/safe_image.php?d=AQBFFbFj5-cYncm7&w=180&h=540&url=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F3%2F3e%2FChineseCheckersboard.jpeg%2F720px-ChineseCheckersboard.jpeg&fallback=hub_games&prefix=d",
              description: "It's like Checkers but all weird",
              min_players:  2,
              max_players:  6,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Cranium",
              image_url: "http://www.listchallenges.com/f/items/29a38b77-e3c8-4309-8ab3-388c4ad35987.jpg",
              description: "The official game of MENSA and people who talk about how they're in MENSA",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Don't Break The Ice",
              image_url: "http://www.listchallenges.com/f/items/fcf04189-4ab1-4bec-982b-cddb0a52acdd.jpg",
              description: "This game sucks but you get to use a hammer, so that's pretty cool. It's like Jenga but horizontal.",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Scattergories",
              image_url: "https://fbexternal-a.akamaihd.net/safe_image.php?d=AQD9mrTMzHPPe-oH&w=180&h=540&url=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fa%2Fa7%2FScattergoriesBox.jpg&fallback=hub_games&prefix=d",
              description: "All words start with letters - now list them!",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Mahjong",
              image_url: "http://www.listchallenges.com/f/items/56026f45-b2ba-4c07-a8aa-733a045e36f4.jpg",
              description: "Seriously WTF is Mahjong",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Dominos",
              image_url: "https://fbexternal-a.akamaihd.net/safe_image.php?d=AQCEuL_7voviXGNu&w=180&h=540&url=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fa%2Fae%2FDominospiel.JPG&fallback=hub_games&prefix=d",
              description: "Before games needed to be fun, there was dominos!",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Card Against Humanity",
              image_url: "http://www.listchallenges.com/f/items/f717d119-baee-468f-bb7d-0bf9791b7f34.jpg",
              description: "You get to be rude and say rude things",
              min_players:  2,
              max_players:  12,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Othello",
              image_url: "http://www.listchallenges.com/f/items/02fa289e-3308-49c8-9cd8-30e88ede410f.jpg",
              description: "No idea. Literally no idea.",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))

game = Category.all.sample.games.create!(name: "Taboo",
              image_url: "http://www.listchallenges.com/f/items/18412cf5-786f-4111-a7e7-232217c3e5b4.jpg",
              description: "Oooooo!",
              min_players:  2,
              max_players:  4,
              created_at: Faker::Time.between(500.days.ago, Time.now, :all))




1000.times do

  categorization = Category.all.sample.categorizations.create!(game: Game.all.sample)

  friendship = User.all.sample.friendships.create!(friend: User.all.sample,
                                                  created_at: Faker::Time.between(500.days.ago, Time.now, :all),
                                                  accepted: [true, false].sample)

  ownership = User.all.sample.ownerships.create!(game: Game.all.sample,
                                                created_at: Faker::Time.between(500.days.ago, Time.now, :all))

  review = Game.all.sample.reviews.create!(reviewer: User.all.sample,
                                          title: Faker::Hacker.say_something_smart,
                                          body: Faker::Lorem.paragraph,
                                          score: Faker::Number.between(1, 5),
                                          created_at: Faker::Time.between(500.days.ago, Time.now, :all))

end
