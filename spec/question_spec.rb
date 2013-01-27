require 'question'
require 'answer/bad'

def add_three_bad_answer(q)
    q.answers << Answer::Bad.new('A')
    q.answers << Answer::Bad.new('B')
    q.answers << Answer::Bad.new('C')
end

describe Question, '#initialize' do
    it 'create a question without answer' do
        q = Question.new('T')
        q.title.should eq('T')
        q.answers.size.should eq(0)
    end

    it 'create a question with 3 answers' do
        q = Question.new('T')
        q.title.should eq('T')
        add_three_bad_answer(q)
        q.answers.size.should eq(3)
    end
end

describe Question, '#correct?' do
    it 'return true if all answers are correct' do
        q = Question.new('T')
        add_three_bad_answer(q)
        q.correct?.should eq(true)
    end

    it 'return false if at least one answer is not correct' do
        q = Question.new('T')
        add_three_bad_answer(q)
        q.answers[0].answer = true
        q.correct?.should eq(false)
    end
end
