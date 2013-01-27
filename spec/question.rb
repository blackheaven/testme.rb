require 'answer/good'

describe Answer::Good, '#initialize' do
    it 'create an abstract answer' do
        a = Answer::Good.new('T')
        a.title.should eq('T')
    end
end

describe Answer::Good, '#correct?' do
    it 'return true if the answer is true' do
        a = Answer::Good.new('T')
        a.correct?.should eq(false)
    end

    it 'return false if the answer is false' do
        a = Answer::Good.new('T')
        a.correct?.should eq(false)
    end
end

