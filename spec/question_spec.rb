require 'question'
require 'answer/bad'

describe Question, '#initialize' do
    it 'create a question without answer' do
        q = Question.new('T')
        q.title.should eq('T')
        q.answers.size.should eq(0)
    end

    it 'create a question with 3 answers' do
        q = Question.new('T')
        q.title.should eq('T')
        q.answers << Answer::Bad.new('A')
        q.answers << Answer::Bad.new('B')
        q.answers << Answer::Bad.new('C')
        q.answers.size.should eq(2)
    end
end

describe Question, '#correct?' do
    it 'return true if the answer is true' do
        a = Question.new('T')
        a.correct?.should eq(false)
    end

    it 'return false if the answer is false' do
        a = Question.new('T')
        a.correct?.should eq(false)
    end
end
