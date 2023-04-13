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
end