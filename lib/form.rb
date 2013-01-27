class Form
    def initialize(questions)
        @questions = questions || []
    end

    def size
        @questions.size
    end

    def [](i)
        @questions[i]
    end

    def correct_questions
        i = 0
        @questions.each do |q|
            i.next if q.correct?
        end
        i
    end
end
