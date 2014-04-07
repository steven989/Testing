class Game

    

    def score(roll_record)

        base_score = 0      #counter to keep track of the base score
        bonus_score = 0     #counter to keep track of the bonus score from strike and spares

        roll_number = 1     #1 or 2 - used as bonus scores are calculated differently depending on if it's the first roll or the second roll
        frame_number = 1    #this is used to keep track of which frame the score is for - used to break the loop so that the final "bonus" rolls are not counted as new frames



        roll_record.each_with_index { |roll,index|

            break if frame_number > 10  #so that the final set of bonus rolls are not counted as new frames

            if roll_number == 1    #this branch of if statement applies to rolls that are the first in their frames

                if roll == 10      #if a roll is a strike

                    base_score += roll      #increase base score by 10
                    bonus_score += roll_record[index+1] #increase the bonus score by the next roll
                    bonus_score += roll_record[index+2] #increase the bonus score by the next next roll
                    frame_number += 1   #since this is a strike, the frame is completed, so increment the frame by 1

                else    #if the roll is not a strike (so either a spare or not)

                    base_score += roll  #add to the base score
                    roll_number = 2     #move to the second roll in the same frame

                end 

            
            else                    #now we are at the second roll within each frame

                if roll + roll_record[index-1] == 10    #if the roll is a spare

                    base_score += roll                  #add to the base score
                    bonus_score += roll_record[index+1] #bonus score is the next roll
                    roll_number = 1                     #roll is done, so reset the roll number to 1 for the next round
                    frame_number += 1                   #move the frame

                else                                    #if the roll is not a spare

                    base_score += roll                  #add to the base score
                    roll_number = 1                     #roll is done, so reset the roll number to 1 for the next round
                    frame_number += 1                   #move the frame

                end 


            end 

            


        }

        total_score = base_score + bonus_score

        total_score

    end 


end 

