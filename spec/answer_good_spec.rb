require 'answer/good'

describe Answer::Good, '#initialize' do
    it 'create an abstract answer' do
        a = Answer::Good.new('T')
        a.answer.should eq(false)
        a.title.should eq('T')
    end
end

describe Answer::Good, '#correct?' do
    it 'return true if the answer is true' do
        a = Answer::Good.new('T')
        a.answer = true
        a.correct?.should eq(true)
    end

    it 'return false if the answer is false' do
        a = Answer::Good.new('T')
        a.answer = false
        a.correct?.should eq(false)
    end
end

