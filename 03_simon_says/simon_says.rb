#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, num = 2
    output = ""
    num.times do |count|
        output += phrase
        if count < num -1
            output += " "
        end
    end
    output
end

def start_of_word phrase, num_letters
    phrase[0, num_letters]
end

def first_word phrase
    output = phrase.split(" ")
    output[0]
end

def titleize phrase
    split_str = phrase.split(" ")
    output = ""
    counter = 0
    split_str.each do |word|
        if (word == "the" || word == "and" || word == "over") && counter == 0
            output += word.capitalize
        elsif (word != "the" && word != "and" && word != "over")
            output += word.capitalize
        else
            output += word
        end
        counter += 1
        if counter < split_str.length
            output += " "
        end
    end
    output
end