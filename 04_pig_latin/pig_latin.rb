#write your code here
def translate phrase
    vowels = "aeiou"
    punct = ".,!"
    split_str = phrase.split
    split_str.each do |word|
        chars = word.split("")
        index = split_str.index(word)
        if chars[0] == chars[0].upcase
            capitalise = true
        end
        punct_char = word[word.length - 1]
        if punct.include?(punct_char)
            chars.pop
            punctuation = true
        end
        while !vowels.include?(chars[0]) do
            if chars[0..1] == ["q", "u"]
                shift_letters = chars.shift(2)
                shift_letters[0] = shift_letters[0].downcase
                chars << shift_letters
            else
                shift_letters = chars.shift.downcase
                chars << shift_letters
            end
        end
        chars << "ay"
        if capitalise
            chars[0] = chars[0].upcase
            capitalise = false
        end
        if punctuation
            chars << punct_char
            punctuation = false
        end
        split_str[index] = chars.join
    end
    split_str.join(" ")
end