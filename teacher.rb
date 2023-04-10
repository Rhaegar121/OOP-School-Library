require "./person.rb"

class Teacher < Person
    attr_accessor :specialization

    def initialize(name = "Unknown", age, parent_permission = true, specialization)
        super(@name = name, age, @parent_permission = parent_permission)
        @specialization = specialization
    end

    def can_use_services?
        true
    end
end
