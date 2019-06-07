class Book
# write your code here
    def title=(title_name)
        @title = title_name
    end

    def title
        exclusions = ["the", "a", "and", "in", "of", "an"]
        words = @title.split
        words.each do |this_word|
            if this_word == "i"
                this_word.capitalize!
            elsif
                if exclusions.index(this_word) == nil
                    this_word.capitalize!
                end
            end
            words[0].capitalize!
        end
        words.join(" ")
    end


end
