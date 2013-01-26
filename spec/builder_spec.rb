require 'builder'

describe Builder, '#parse' do
  it 'create 2 questions with 3 and 4 answers' do
    qs = Builder.new.parse(File.dirname(__FILE__) + '/../examples/ex1.yml')
    qs.size.should eq(2)
    qs[0].answers.size.should eq(3)
    qs[1].answers.size.should eq(4)
  end
end

