class Question
    attr_reader :title
    attr_accessor :answers
    def initialize(title)
        @title = title
        @answers = []
    end

    def correct?
        @answers.each do |a|
            return false if !a.correct?
        end
        true
    end
end
