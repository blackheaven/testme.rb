require 'interaction/cli'
require 'builder'

def create_input_mock(vs)
    m = double()
    m.stub(:getline).and_return(*vs)
    m
end

describe Interaction::Cli, '#initialize' do
    it 'create a cli interaction' do
        f = Builder.new.parse(File.new(File.dirname(__FILE__) + '/../examples/ex1.yml'))
        i = Interaction::Cli.new(f)
        i.form.should eq(f)
    end
end

describe Interaction::Cli, '#run' do
    it 'create a cli interaction' do
        f = Builder.new.parse(File.new(File.dirname(__FILE__) + '/../examples/ex1.yml'))
        o = []
        Interaction::Cli.new(f).run(create_input_mock(['1', '2 4', nil]), o)
        o.should eq([
            "1.. What is the best programming language ever?\n",
            "1. ruby\n", "2. c++\n", "3. java\n", ">> ",
            "2.. Which frameworks are written in ruby?\n",
            "1. Drupal\n", "2. Ruby on Rails\n", "3. Symphony\n", "4. Sinatra\n", ">> "])
    end
end
