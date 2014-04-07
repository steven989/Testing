class Timer

    attr_accessor :seconds

    def initialize

    @seconds = 0

    end 

    def time_string

        second = @seconds % 60

        minute_actual = ((@seconds.to_f / 60.00).floor).to_i
        minute = (((@seconds.to_f / 60.00).floor).to_i) % 60

        hour = ((minute_actual.to_f / 60.00).floor).to_i

        timestring = (if hour < 10 
           ("0"+hour.to_s)
        else 
            hour.to_s
        end)+":"+("0"+minute.to_s)[-2..-1]+":"+("0"+second.to_s)[-2..-1]


        timestring

    end

end


time = Timer.new

time.seconds = 12
puts time.time_string

