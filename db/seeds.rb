# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
require 'json'

# puts "Cleaning up database..."
# List.destroy_all
# Movie.destroy_all
# puts "Database cleaned"

# url = 'https://api.themoviedb.org/3/movie/top_rated?language=en-US'
# api_key = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmYWY0ZTI0NDNhMzkzNWI3OGZjNWMxZDc0NzUyMGE2NCIsInN1YiI6IjYzZmUxMTZjOWYxYmU3MDA3Y2E2MTRlNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.e3bAaSXdvvzghnJo6vF4M8PerITgGVkiM_9EVjWM6hs' # Replace with your actual API key

# headers = {
#   'Authorization' => "Bearer #{api_key}"
# }

# movies_array = []

# 9.times do |i|
#   puts "Importing movies from page #{i + 1}"
#   response = URI.open("#{url}&page=#{i + 1}", headers)
#   movies = JSON.parse(response.read)['results']
#   movies.each do |movie|
#     movies_array << movie
#   end
#   movies
# end

# movies_array.each do |i|
#   response1 = URI.open("https://api.themoviedb.org/3/movie/#{i['id']}?language=en-US", headers)
#   movie = JSON.parse(response1.read)
#   Movie.create!(
#     title: movie['title'],
#     overview: movie['overview'],
#     poster_url: "https://image.tmdb.org/t/p/original#{movie['backdrop_path']}",
#     rating: movie['vote_average'],
#     original_title: movie['original_title'] || movie['title'],
#     genre: movie['genres'].map { |genre| genre['name'] }.join(', '),
#     release_date: movie['release_date'],
#     popularity: movie['popularity'],
#     tagline: movie['tagline'],
#     original_language: movie['original_language']
#   )
# end
# puts "Created the following amount of movies #{Movie.count}"


# list_titles = %w[Action Comedy Drama Horror Romance Thriller Sci-Fi Fantasy Documentary Animation]

# 10.times do
#   name = list_titles.sample
#   list_titles.delete(name)
#   List.create!(
#     name: name,
#     user_id: User.all.sample.id
#   )
# end

10.times do
  user = User.find_by(id: 2)
  Favorite.create!(
    user_id: user.id,
    movie_id: Movie.all.sample.id
  )
end
