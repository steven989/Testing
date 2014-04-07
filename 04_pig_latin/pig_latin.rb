def translate(phrase)

    words_array = phrase.split(" ")


    translated_phrase = words_array.inject("") { |phrase, word|

        pattern = word.slice!(/^([^aeiou]*qu|[^aeiou]+)/i)

        phrase << word.to_s+pattern.to_s+"ay "

        phrase

    }

    translated_phrase[0..-2]

end

