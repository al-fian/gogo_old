# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create!(
  first_name: "Mike",
  last_name: "Tyson",
  email: "mtyson@example.com",
  username: "mtyson34",
  password: "fyannet3000"
)

user_2 = User.create!(
  first_name: "Chuck",
  last_name: "Nice",
  email: "cnice@example.com",
  username: "cnice007",
  password: "fyannet8000"
)

post = Post.create!(user: user_1, postable: Status.new(
  text: "Wohoo! We're back in Bangkok. Where is everybody?"
))

Post.create!(user: user_2, postable: Status.new(
  text: "Arghhh! any party that I can join in."
), thread: post)

Post.create!(user: user_1, postable: Status.new(
  text: "That's great! We can all have some fun here."
), thread: post)

Post.create!(user: user_2, postable: Status.new(
  text: "Of course, dudes. Let's get a party kick off."
), thread: post)

place_1 = Place.create!(
  locale: "en",
  name: "Hotel Bangkok",
  place_type: "hotel",
  coordinate: "POINT (112.739898 -7.259836 0)"
)

Post.create(user: user_1, postable: Sight.new(
  place: place_1, activity_type: Sight::CHECKIN
))

Bond.create(user: user_1, friend: user_2, state: Bond::FOLLOWING)
Bond.create(user: user_2, friend: user_1, state: Bond::FOLLOWING)