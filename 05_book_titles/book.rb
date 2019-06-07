class Book
# write your code here
    def title=(title_name)
        @title = title_name
    end

    def title
        exclusions = ["the", "a", "and", "in", "of", "an"]
        output = ""
        counter = 0
        words = @title.split
        words.each do |this_word|
            if counter == 0 || this_word == "i"
                output += this_word.capitalize
            elsif
                if exclusions.index(this_word) != nil
                    output += this_word
                else
                    output += this_word.capitalize
                end
            end
            if counter < words.length - 1
                output += " "
            end
            counter += 1
        end
        @title = output
    end


end
