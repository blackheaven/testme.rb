module Interaction
    class Abstract
        attr_reader :form
        def initialize(form)
            @form = form
        end

        def run
            raise RuntimeError, "Virtual function '#{self.class.name}' called"
        end
    end
end
