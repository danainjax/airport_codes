require 'colorize'
require 'pry'

class AirportCodes::CLI

    def main
        call
        starting_from
        traveling_to
        airport_codes
        enjoy_trip
        more_trips
        goodbye
        list_trips        
    end

    def call
        puts "                                                       "
        puts " ******************************************************"
        puts "                                                       "
        puts "Welcome to the Airport Codes Finder. Let's get started!".colorize(:magenta)
        puts "                                                       "
        puts " ******************************************************"
    end
    
    def starting_from
        puts "Hello Traveler, where are you starting from?"
    end

    def traveling_to  
        puts "Where are you traveling to?"
    end

    def airport_codes
        puts "Your airport codes are #{XXX} to #{YYY}"
    end

    def enjoy_trip
        puts "Enjoy your trip from city variable to city variable"
    end

    def more_trips
        puts "Any more trips to plan?, We have those airport codes!"
    end

    def goodbye 
        puts "Thanks for searching your airports with us. Travel safely!"
    end

    def list_trips
        #add code to list all the saved trips here
    
    end

end