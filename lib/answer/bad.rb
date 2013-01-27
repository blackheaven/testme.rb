require 'answer/abstract'

module Answer
    class Bad < Abstract
        def correct?(answer)
            !answer
        end
    end
end
