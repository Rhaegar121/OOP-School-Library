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

end