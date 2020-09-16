require 'colorize'
require 'pry'

class AirportCodes::CLI

    @@airports = []


    def main
        call
        # starting_from
        get_code
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

    def get_code  
        puts "Where are you traveling to? (Enter city name)"
        city = gets.chomp
        # puts API.new.airports_hash(city)
        airports = API.new.airports_hash(city)
        #this is where the parsed JSON data returns an array of hashes
        #now...iterate thru the array of hashes and puts out the code and name instead of hard coding below.
        airports.each do |airport|
            puts "#{airport["code"]} is the airport code for #{airport["name"]}"
        end


        # airport_code = airports[0]["code"] 
        # airport_code_2 = airports[1]["code"]

        

        #Need to instantiate either a new trip or new airport code object here. Ask Ally about this. Can I not use the airport_codes lib file to make a class AirportCodes? I don' think so because when I created the gem it made a module?? Can maybe make a new trip? That may work.

        #Need more *MEAT*...need to display more data at one time. How do we get all the airports and names to populate for the city? How about all the airports in a state?? Whatever is easiest to grab. 

        # airport_code = data[0]
        # name = airports[0]["name"] 
        #put the code into the codes array?
        #instantiate and Airport.new
        # puts "                                  "
        # puts "The airport code is #{airport_code} for #{name}.".colorize(:blue)
        # puts "                                  "
        # puts airport_code_2
        # name = airports[1]["name"]
        # puts "                                  "
        # puts "The airport code is #{airport_code} for #{name}.".colorize(:blue)
        # puts "                                  "
        
        # data.each do | attribute, value|
        #     puts "#{attribute}: #{value}"
        # end

        #currently this works, but only when *one* airport code. If more than one, need to find a way to return those values also. **LIGHTBULB**: iteration??? Get help understanding how to iterate thru with airport codes and names returned. I believe the date type is a nested hash. Need to understand how to iterate through this and puts out the codes and names.
        
#         !-- BUGS LIST:
# Whitefish breaks the program
# Smyrna breaks the program
# Smith breaks the program
# Jefferson City breaks the program
# Need to find a way to display an error message if no data??? -->

    end

    # def closest_airport_codes
    #     # puts traveling_to
    #     #puts a list of the closest airports and their codes based on user traveling_to input
    # end

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