#write your code here
def translate phrase
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    punctuation = [",", ".", "!"]
    split_str = phrase.split(" ")
    start_vowel = false
    one_consonant = false
    two_consonant = false
    three_consonant = false
    upper_case = false
    has_punctuation = false
    counter = 0
    output = ""
    new_word = ""
    punctuation_char = ""
    split_str.each do |word|
        letterOne = word[0,1]
        if letterOne == letterOne.upcase
            upper_case = true
        end
        letterTwo = word[1,1]
        letterThree = word[2,1]
        lastChar = word[word.length - 1, 1]
        if punctuation.index(lastChar) != nil
            punctuation_char = lastChar
            word = word[0, word.length - 1]
        end
        if vowels.index(letterOne) != nil
            start_vowel = true
        elsif consonants.index(letterOne) != nil && vowels.index(letterTwo) != nil
            if letterOne == "q" && letterTwo == "u"
                two_consonant = true
            else
                one_consonant = true
            end
        elsif (consonants.index(letterTwo) != nil && consonants.index(letterThree) == nil)
            if letterTwo == "q" && letterThree = "u"
                three_consonant = true
            else
                two_consonant = true
            end
        elsif consonants.index(letterThree) != nil
            three_consonant = true
        end
        if start_vowel
            output += word + "ay"
        elsif one_consonant && !(two_consonant && three_consonant)
            new_word = word[1, word.length] + letterOne + "ay" + punctuation_char
        elsif two_consonant && !three_consonant
            new_word = word[2, word.length] + letterOne + letterTwo + "ay" + punctuation_char
        elsif three_consonant
            new_word = word[3, word.length] + letterOne + letterTwo + letterThree + "ay" + punctuation_char
        end
        if upper_case
            new_word = new_word.capitalize
        end
        output += new_word
        if counter < split_str.length - 1
            output += " "
        end
        counter += 1
        start_vowel = false
        one_consonant = false
        two_consonant = false
        three_consonant = false
        upper_case = false
        has_punctuation = false
        punctuation_char = ""
    end
    output
end