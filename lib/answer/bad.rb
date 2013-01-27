require "#{File.dirname(__FILE__)}/abstract"

module Answer
    class Bad < Abstract
        def correct?
            !@answer
        end
    end
end
