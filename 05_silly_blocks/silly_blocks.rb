def reverser

    words = yield.split(" ")

    reversed_phrase = words.inject("") {|reversal, word| reversal << word.reverse+" "; reversal}

    reversed_phrase[0..-2]

end

def adder(increment=1)

    yield+increment

end


def repeater(repeat = 1)

   repeat.times{yield}

end