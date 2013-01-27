module Answer
    class Abstract
        attr_reader :title
        def initialize(title)
            @title = title
        end

        def correct?(answer)
            raise RuntimeError, "Virtual function '#{self.class.name}' called"
        end
    end
end
