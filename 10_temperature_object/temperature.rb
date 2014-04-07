class Temperature

    def initialize(temp)

        @temp = temp

    end 

    def to_fahrenheit

        @temp.each {|key, value|

            if key == :c

               return value*9/5 + 32

            else 

                return value

            end 

        }

    end 


    def to_celsius

        @temp.each {|key, value|

            if key == :c

                return value

            else 

                return (value - 32) * 5/9

            end 

        }

    end 

    def self.in_celsius(temp)

        Temperature.new(c:temp)

    end 


    def self.in_fahrenheit(temp)

        Temperature.new(f:temp)

    end 



end



class Celsius < Temperature

    def initialize(temp)

        @temp = ({c:temp})

    end 

end 


class Fahrenheit < Temperature

    def initialize(temp)

        @temp = ({f:temp})

    end 
end 