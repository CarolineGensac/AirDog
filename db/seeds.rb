# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  sitter_dog = SitterDog.create!(first_name: Faker::TvShows::BrooklynNineNine.character)
end

#création patients random
5.times do
  dog = Dog.create!(name: Faker::Creature::Dog.name)
end

5.times do
  sitter_dog = SitterDog.order("RANDOM()").first
  dog = Dog.order("RANDOM()").first
  stroll = Stroll.create!(rdv: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), dog: dog, sitter_dog: sitter_dog)
end