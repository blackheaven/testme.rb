require "#{File.dirname(__FILE__)}/abstract"

module Interaction
    class Cli < Abstract
        def run(i, o)
            (1..(@form.size)).each do |qi|
                print_question(qi, o)
                o << ">> "
                break if !save_answer(i.getline, @form[qi-1])
            end
        end

        private
        def print_question(qi, o)
            q = @form[qi-1]
            o << "#{qi}.. " + q.title + "\n"

            (1..(q.size)).each do |ai|
                o << "#{ai}. " + q[ai-1].title + "\n"
            end
        end

        def save_answer(l, q)
            return false if !l
            l.strip.split(' ').each do |n|
                n = n.to_i
                q[n-1] = true if n && n > 0 && n <= q.size
            end
            true
        end
    end
end
