require 'interaction/abstract'
require 'builder'

describe Interaction::Abstract, '#initialize' do
    it 'create an abstract interaction' do
        f = Builder.new.parse(File.new(File.dirname(__FILE__) + '/../examples/ex1.yml'))
        i = Interaction::Abstract.new(f)
        i.form.should eq(f)
    end
end

describe Interaction::Abstract, '#run' do
    it 'throw an exception' do
        f = Builder.new.parse(File.new(File.dirname(__FILE__) + '/../examples/ex1.yml'))
        i = Interaction::Abstract.new(f)
        expect { i.run }.to raise_error(RuntimeError, "Virtual function 'Interaction::Abstract' called")
    end
end
