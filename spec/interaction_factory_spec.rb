require 'interaction/factory'
require 'builder'

describe Interaction::Factory, '#create' do
    it 'create a cli interaction' do
        f = Builder.new.parse(File.new(File.dirname(__FILE__) + '/../examples/ex1.yml'))
        i = Interaction::Factory.new.create('cli', f)
        i.form.should eq(f)
        i.instance_of?(Interaction::Cli).should eq(true)
    end

    it 'create a default interaction' do
        f = Builder.new.parse(File.new(File.dirname(__FILE__) + '/../examples/ex1.yml'))
        i = Interaction::Factory.new.create('unknown', f)
        i.form.should eq(f)
        i.instance_of?(Interaction::Cli).should eq(true)
    end
end

