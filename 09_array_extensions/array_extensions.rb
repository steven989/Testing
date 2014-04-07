class Array

    def sum

        sum = self.inject(0) {|sum,element| sum += element; sum}

        sum

    end 


    def square

        squared_array = self.map {|element| element ** 2}

        squared_array

    end 


    def square!

        self.map! {|element| element ** 2}

    end 

end 