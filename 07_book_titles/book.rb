class Book

    def title=(title)

        title_array = title.split(" ")

        phrase = ""

        exceptions = [the,and,a,an,in,of]

        title_array.each_with_index { |word, index|

            if index == 1 

                phrase << word.capitalize+" "

            else

                if exceptions.include? (word.downcase)

                    phrase << word+" "

                else 

                    phrase << word.capitalize+" "

                end 


            end 
                


        }

        phrase[0..-2]

    end 


end 