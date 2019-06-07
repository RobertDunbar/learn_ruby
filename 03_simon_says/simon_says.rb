#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, num = 2
    output = []
    num.times do |count|
        output << phrase
    end
    output.join(" ")
end

def start_of_word phrase, num_letters
    phrase[0, num_letters]
end

def first_word phrase
    output = phrase.split
    output[0]
end

def titleize phrase
    split_str = phrase.split
    exceptions = ["the", "and", "over"]
    output = []
    counter = 0
    split_str.each do |word|
        if exceptions.index(word) == nil
            word.capitalize!
        end
        split_str[0].capitalize!
    end
    split_str.join(" ")
end