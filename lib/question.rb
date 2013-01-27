class Question
    attr_reader :title
    attr_accessor :answers
    def initialize(title)
        @title = title
        @answers = []
    end
end
