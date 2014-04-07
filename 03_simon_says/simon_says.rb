def echo(word)

    word 

end

def shout(word)

    word.upcase

end

def repeat(word, repeat_times=2)

    result = ""

    repeat_times.times do 
        
        result << word+" "

    end

    result[0..-2]

end

def start_of_word(word,chars)   

    word[0..(chars-1)]

end


def first_word(phrase)

    phrase[0..(phrase.index(" ")-1)]

end

def titleize(phrase)

    words=phrase.split(" ")

    rephrase = ""

    little_words = ["over","and","the"]

    words.each_with_index do |word,index|
        
        if index == 0 
            rephrase << word.capitalize+" "
        else 

            if little_words.include? (word.downcase)

                rephrase << word.downcase+" "

            else 

                rephrase << word.capitalize+" "

            end

        end

    end

    rephrase[0..-2]

end