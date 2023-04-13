require_relative 'app'

def main
    app = App.new

    puts "Welcome to School Library App!\n\n"
    puts 'Please choose an option by entering a number: '
    puts '1 - List of all books'
    puts '2 - List of all people'
    puts '3 - Add a person'
    puts '4 - Create a book'
    puts '5 - Add a rental'
    puts '6 - List of all rental for given id'
    puts '7 - Exit'
    option = gets.chomp.to_i
    loop do
        case option
        when 1 then app.list_books
        when 2 then app.list_people
        when 3 then app.create_person
        when 4 then app.create_book
        when 5 then app.create_rental
        when 6 then app.list_rentals
        when 7 break
        else
            puts 'Invalid option, please type correct number!'
        end
    end
end
    