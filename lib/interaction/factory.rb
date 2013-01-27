require "#{File.dirname(__FILE__)}/cli"

module Interaction
    class Factory
        def create(kind, form)
            case kind
            when 'cli' then Cli.new(form)
            else            create('cli', form)
            end
        end
    end
end
