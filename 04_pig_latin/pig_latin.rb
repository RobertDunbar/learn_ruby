#write your code here
def translate phrase
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    splitStr = phrase.downcase.split(" ")
    startVowel = false
    oneConsonant = false
    twoConsonant = false
    threeConsonant = false
    counter = 0
    output = ""
    splitStr.each do |word|
        letterOne = word[0,1]
        letterTwo = word[1,1]
        letterThree = word[2,1]
        if vowels.index(letterOne) != nil
            startVowel = true
        elsif consonants.index(letterOne) != nil && vowels.index(letterTwo) != nil
            if letterOne == "q" && letterTwo == "u"
                twoConsonant = true
            else
                oneConsonant = true
            end
        elsif (consonants.index(letterTwo) != nil && consonants.index(letterThree) == nil)
            if letterTwo == "q" && letterThree = "u"
                threeConsonant = true
            else
                twoConsonant = true
            end
        elsif consonants.index(letterThree) != nil
            threeConsonant = true
        end
        if startVowel
            output += word + "ay"
        elsif oneConsonant && !(twoConsonant && threeConsonant)
            output += word[1, word.length] + letterOne + "ay"
        elsif twoConsonant && !threeConsonant
            output += word[2, word.length] + letterOne + letterTwo + "ay"
        elsif threeConsonant
            output += word[3, word.length] + letterOne + letterTwo + letterThree + "ay"
        end
        if counter < splitStr.length - 1
            output += " "
        end
        counter += 1
        startVowel = false
        oneConsonant = false
        twoConsonant = false
        threeConsonant = false
    end
    output
end