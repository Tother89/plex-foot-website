# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🌱 Seeding MediaItems..."

MediaItem.destroy_all

movies = [
  "Fight Club",
  "The Matrix",
  "Inception",
  "Interstellar",
  "The Dark Knight",
  "Pulp Fiction",
  "The Shawshank Redemption",
  "Forrest Gump",
  "The Godfather",
  "The Godfather Part II",
  "Gladiator",
  "The Lord of the Rings: The Fellowship of the Ring",
  "The Lord of the Rings: The Two Towers",
  "The Lord of the Rings: The Return of the King",
  "Star Wars: A New Hope",
  "Star Wars: The Empire Strikes Back",
  "Jurassic Park",
  "The Silence of the Lambs",
  "Saving Private Ryan",
  "The Prestige"
]

tv_shows = [
  "Breaking Bad",
  "Better Call Saul",
  "The Wire",
  "The Sopranos",
  "Game of Thrones",
  "Stranger Things",
  "The Office",
  "Parks and Recreation",
  "True Detective",
  "Chernobyl"
]

movies.each do |title|
  MediaItem.create!(
    title: title,
    media_type: "movie"
  )
end

tv_shows.each do |title|
  MediaItem.create!(
    title: title,
    media_type: "tv"
  )
end

puts "✅ Seeded #{MediaItem.count} MediaItems"
