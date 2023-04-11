require_relative 'decorator'

class TrimmerDecorator < Decorator
    def correct_name
        @nameable.correct_name.slice(0, 10).strip
    end
end