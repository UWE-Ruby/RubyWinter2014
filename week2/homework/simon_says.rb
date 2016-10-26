module SimonSays
        def echo(string)
                string
        end
        
        def shout(string)
                string.upcase
        end

        def first_word(string)
                string.split.first
        end

        def start_of_word(string,i)
                string[0...i]
        end
        
        def repeat(string, x=2)
                ([string]*x).join(' ')
        end
end