require_relative 'person'
require_relative 'book'
require_relative 'classroom'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
    attr_accessor :people, :books, :students, :teachers, :rentals

    def initialize
        @people = []
        @books = []
        @students = []
        @teachers = []
        @rentals = []
    end

    def list_books
        @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    end


    def list_people
        @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    end

    def create_person
        print 'Do you want to Create a students (1) or a teacher (2)? [Input the number]: '
        select_person = gets.chomp.to_i
        print 'Name: '
        name = gets.chomp
        print 'Age: '
        age = gets.chomp.to_i
        case select_person
        when 1
            print 'Has parent permission? [Y/N]: '
            permission = gets.chomp
            @people << Student.new(age, 'Unknown', name, permission)
        when 2
            print 'Specialization: '
            specialization = gets.chomp
            @people << Teacher.new(age, specialization, name)
        end
        puts 'Person created successfully'
    end

    def create_book
        print 'Title: '
        title = gets.chomp
        print 'Author: '
        author = gets.chomp
        @books << Book.new(title, author)
        puts 'Book created successfully'
    end

    def create_rental
        puts 'Select a book from the following list by number'
        @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
        book_number = gets.chomp.to_i
        puts 'Select a person from the following list by number (not id)'
        @people.each_with_index { |person, index| puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"}
        person_number = gets.chomp.to_i
        print 'Date: '
        date = gets.chomp
        @rentals << Rental.new(date, @people[person_number], @books[book_number])
        puts 'Rental created successfully'
    end

    def list_rentals
        print 'ID of person: '
        id = gets.chomp.to_i
        puts 'Rentals: '
        @rentals.each do |rental|
            if rental.person.id == id
                puts "Date: #{rental.date}, Book: \"#{rental.book.title} by #{rental.book.author}"
            end
        end
    end
end