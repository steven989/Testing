class Changer

def self.make_change(amount)

    quarter_value = 25
    dime_value = 10
    nickel_value = 5
    penny_value = 1

    remainder = amount

    change = []

    while remainder > 0

        if remainder - quarter_value >= 0
            change << quarter_value
            remainder -= quarter_value
        elsif remainder - dime_value >= 0
            change << dime_value
            remainder -= dime_value
        elsif remainder - nickel_value >= 0
            change << nickel_value
            remainder -= nickel_value
        elsif remainder - penny_value >= 0
            change << penny_value
            remainder -= penny_value 
        end 

    end

    change
end 

end 
