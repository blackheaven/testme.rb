require "#{File.dirname(__FILE__)}/abstract"

module Answer
    class Good < Abstract
        def correct?
            @answer
        end
    end
end
