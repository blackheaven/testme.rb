class Builder
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
        Answer.new(normalized_answer, is_correct)
    end
end
