require 'answer/abstract'

module Answer
    class Good < Abstract
        def correct?(answer)
            answer
        end
    end
end
