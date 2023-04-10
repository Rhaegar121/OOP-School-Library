require "./person.rb"

class Student < Person
    attr_accessor :classroom

    def initialize(name = "Unknown", age, parent_permission = true, classroom)
        super(@name = name, age, @parent_permission = parent_permission,)
        @classroom = classroom
    end

    def play_hooky
        "¯\(ツ)/¯"
    end
end
