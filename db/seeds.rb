# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  first_name: "Mike",
  last_name: "Tyson",
  email: "mtyson@example.com",
  username: "mtyson34",
  password: "fyannet3000"
)

user2 = User.create!(
  first_name: "Chuck",
  last_name: "Nice",
  email: "cnice@example.com",
  username: "cnice007",
  password: "fyannet8000"
)

=begin
Bond.create(user: user1, friend: user2, state: Bond::FOLLOWING)
Bond.create(user: user2, friend: user1, state: Bond::FOLLOWING)

place = Place.create!(
  locale: "en",
  name: "Hotel Bangkok",
  place_type: "hotel",
  coordinate: "POINT (112.739898 -7.259836 0)"
)

post = Post.create!(user: user1, postable: Status.new(
  text: "Wohoo! We're back in Bangkok. Where is everybody?"
))

Post.create!(user: user2, postable: Status.new(
  text: "Arghhh! any party that I can join in."
), thread: post)

Post.create!(user: user1, postable: Status.new(
  text: "That's great! We can all have some fun here."
), thread: post)

Post.create!(user: user2, postable: Status.new(
  text: "Of course, dudes. Let's get a party kick off."
), thread: post)

Post.create(user: user1, postable: Sight.new(
  place: place, activity_type: Sight::CHECKIN
))
=end