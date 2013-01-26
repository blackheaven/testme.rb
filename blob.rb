class Question
    attr_accessor :answers
    def initialize(title)
        @title = title
        @answers = []
    end
end

class Answer
    def initialize(title, correct = false)
        @title = title
        @correct = correct
    end
end

#Questions must be placed on the beginning of the line, answers should begin with white space.
#The answers, which start with the + sign are considered correct.
#Example:
#What is the best programming language ever?
# +ruby
# c++
# java
#Which frameworks are written in ruby?
# Drupal
# +Ruby on Rails
# Symphony
# +Sinatra
def parse_questions(file_name)
    questions = []
    File.open file_name do |infile|
        while (line = infile.gets)
            if line.match /^\s+/
                is_correct = !line.match(/^\s+\+/).nil?
                normalized_answer = line.strip
                normalized_answer[0] = '' if is_correct
                questions.last.answers << Answer.new(normalized_answer, is_correct)
            else
                questions << Question.new(line.strip)
            end
        end
    end
    questions
end

p parse_questions("q.yml")
