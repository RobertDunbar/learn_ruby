#write your code here
def translate phrase
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    punctuation = [",", ".", "!"]
    splitStr = phrase.split(" ")
    startVowel = false
    oneConsonant = false
    twoConsonant = false
    threeConsonant = false
    upperCase = false
    hasPunctuation = false
    counter = 0
    output = ""
    newWord = ""
    punctuationChar = ""
    splitStr.each do |word|
        letterOne = word[0,1]
        if letterOne == letterOne.upcase
            upperCase = true
        end
        letterTwo = word[1,1]
        letterThree = word[2,1]
        lastChar = word[word.length - 1, 1]
        if punctuation.index(lastChar) != nil
            punctuationChar = lastChar
            word = word[0, word.length - 1]
        end
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
            newWord = word[1, word.length] + letterOne + "ay" + punctuationChar
        elsif twoConsonant && !threeConsonant
            newWord = word[2, word.length] + letterOne + letterTwo + "ay" + punctuationChar
        elsif threeConsonant
            newWord = word[3, word.length] + letterOne + letterTwo + letterThree + "ay" + punctuationChar
        end
        if upperCase
            newWord = newWord.capitalize
        end
        output += newWord
        if counter < splitStr.length - 1
            output += " "
        end
        counter += 1
        startVowel = false
        oneConsonant = false
        twoConsonant = false
        threeConsonant = false
        upperCase = false
        hasPunctuation = false
        punctuationChar = ""
    end
    output
end