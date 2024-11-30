# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# load(Rails.root.join('db', 'seeds', 'development.rb'))

# authors = YAML.load_file('db/masters/authors.yml')
# authors.each do |author|
#   Author.create!(name: author['name'], age: author['age'])
# end

books = YAML.load_file('db/masters/books.yml')
books.each do |book|
  Book.create!(title: book['title'], published_by: book['published_by'])
end
