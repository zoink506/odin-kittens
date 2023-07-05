# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

kittens = Kitten.create([
  { name: "Mittens",
    age: 1,
    cuteness: "high",
    softness: "medium" },
  { name: "Pixie",
    age: 17,
    cuteness: "low",
    softness: "medium" }
])
