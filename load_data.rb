require "json"
require_relative "book"
require_relative "person"
require_relative "rental"

require "json"

def load_data(app)
  books = File.exist?("./data/books.json") ? File.read("./data/books.json") : "[]"
  people = File.exist?("./data/people.json") ? File.read("./data/people.json") : "[]"
  rentals = File.exist?("./data/rentals.json") ? File.read("./data/rentals.json") : "[]"

  p JSON.parse(books).class
  p JSON.parse(people).class
  p JSON.parse(rentals).class

  app.books << JSON.parse(books).map { |book| Book.new(book["title"], book["author"]) }
  app.people << JSON.parse(people).map { |person| Person.new(person["age"], person["id"], person["name"]) }
  app.rentals << JSON.parse(rentals).map { |rental| Rental.new(rental["data"], app.people[rental["person"]], app.books[rental["book"]]) }
end
