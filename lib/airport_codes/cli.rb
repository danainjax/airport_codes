require 'colorize'
require 'pry'

class AirportCodes::CLI

    def main
        call
        # starting_from
        traveling_to
        # airport_codes
        # enjoy_trip
        # more_trips
        goodbye
        # list_trips        
    end

    def call
        puts "                                                       "
        puts " ******************************************************"
        puts "                                                       "
        puts "Welcome to the Airport Codes Finder. Let's get started!".colorize(:red)
        puts "                                                       "
        puts " ******************************************************"
    end
    
    def starting_from
        puts "Hello Traveler, where are you starting from?"
    end

    def traveling_to  
        puts "Where are you traveling to? (Enter city name)"
        city = gets.chomp
        # puts API.new.get_data(city)
        data = API.new.get_data(city)
        airport_code = data.first["code"] 
        name = data.first["name"] 
        puts "                                  "
        puts "The airport code is #{airport_code} for #{name}.".colorize(:blue)
        puts "                                  "
        #currently this works, but only when one airport code. If more than one, need to find a way to return those values also. Spent a lot of time on stack overflow trying to understand why I got the convert string to integer error. Method was returning an array not a hash? What? Ask about this in office hours.
        
        

    end

    def airport_codes
        # puts "Your airport codes are #{XXX} to #{YYY}"
        # puts "The airport code for #{airport_code} is #{name}."
    end

    def enjoy_trip
        puts "Enjoy your trip from city variable to city variable"
    end

    def more_trips
        puts "Any more trips to plan?, We have those airport codes!"
    end

    def goodbye 
        puts "Thanks for searching your airports with us. Travel safely!".colorize(:red)
    end

    def list_trips
        #add code to list all the saved trips here
    
    end

end