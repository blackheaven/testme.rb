require 'answer/bad'

describe Answer::Bad, '#initialize' do
    it 'create an abstract answer' do
        a = Answer::Bad.new('T')
        a.answer.should eq(false)
        a.title.should eq('T')
    end
end

describe Answer::Bad, '#correct?' do
    it 'return false if the answer is true' do
        a = Answer::Bad.new('T')
        a.answer = true
        a.correct?.should eq(false)
    end

    it 'return true if the answer is false' do
        a = Answer::Bad.new('T')
        a.answer = false
        a.correct?.should eq(true)
    end
end

