require 'answer/good'
require 'answer/bad'

module Answer
    class Factory
        def create(title, correct)
            if correct
                Good.new(title)
            else
                Bad.new(title)
            end
        end
    end
end
