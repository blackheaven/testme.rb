require "#{File.dirname(__FILE__)}/question"
require "#{File.dirname(__FILE__)}/answer/factory"

class Builder

    def initialize(factory = nil)
        @factory = factory || Answer::Factory.new
    end

    def parse(file_name)
        questions = []
        File.open file_name do |infile|
            while (line = infile.gets)
                if line.match /^\s+/
                    questions.last.answers << parse_answer(line)
                else
                    questions << Question.new(line.strip)
                end
            end
        end
        questions
    end

    private
    def parse_answer(line)
        is_correct = !line.match(/^\s+\+/).nil?
        normalized_answer = line.strip
        normalized_answer[0] = '' if is_correct
        @factory.create(normalized_answer, is_correct)
    end
end
