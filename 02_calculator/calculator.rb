
def add(num1,num2)

    num1+num2

end


def subtract(num1,num2)

    num1-num2

end

def sum(array)

    sums = array.inject(0) {|sum,value| sum += value; sum}

    sums

end