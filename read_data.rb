require 'json'

def load_data(app)
  books = File.exist?('./data/books.json') ? File.read('./data/books.json') : '[]'
  people = File.exist?('./data/people.json') ? File.read('./data/people.json') : '[]'
  rentals = File.exist?('./data/rentals.json') ? File.read('./data/rentals.json') : '[]'

  JSON.parse(books).each do |book|
    book = Book.new(book['title'], book['author'])
    app.books.push(book)
  end

  JSON.parse(people).each do |person|
    if person['type'] == 'Student'
      student = Student.new('Unkown', person['age'], person['name'], parent_permission: person['permission'])
      app.people.push(student)
    else
      teacher = Teacher.new(person['age'], person['name'], person['specialization'])
      app.people.push(teacher)
    end
  end

  JSON.parse(rentals).each do |rental|
    rental = Rental.new(rental['date'], app.people[rental['person_index']], app.books[rental['book_index']])
    app.rentals.push(rental)
  end
end
