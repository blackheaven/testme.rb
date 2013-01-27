module Answer
    class Abstract
        attr_reader :title
        attr_accessor :answer
        def initialize(title)
            @title = title
            @answer = false
        end

        def correct?
            raise RuntimeError, "Virtual function '#{self.class.name}' called"
        end
    end
end
