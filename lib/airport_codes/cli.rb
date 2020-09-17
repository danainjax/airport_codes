require 'colorize'
require 'pry'

class AirportCodes::CLI

    @@airports = []


    def main
        call
        get_codes
        more_codes
        list_codes 
        goodbye
              
    end

    def call
        puts "                                                       "
        puts " ******************************************************"
        puts "                                                       "
        puts "Welcome to the Airport Codes Finder. Let's get started!".colorize(:red)
        puts "                                                       "
        puts " ******************************************************"
    end
    

    def get_codes  
        puts "Where are you traveling to? (Enter city, or state, or country)"
        city = gets.chomp
        # puts API.new.airports_hash(city)
        airports = API.new.airports_hash(city)
        #this is where the parsed JSON data returns an array of hashes
        #now...iterate thru the array of hashes and puts out the code and name instead of hard coding 
        airports.each do |airport|
            airport_object = Airport.new(airport["code"], airport["name"])
            # puts "#{airport["code"]} is the airport code for #{airport["name"]}"
            puts "#{airport_object.code} is the airport code for #{airport_object.name}"
              # raise Airport.all.inspect
        end
        
        #Need to instantiate a new airport object here. Ask Ally about this. How do I give my Airport object attributes when instantiated? Then store and then list? Which file do we do this in?
    end
    
        
#         !-- BUGS LIST:
# Need to find a way to display an error message if no data??? --> if statement

    def more_codes
        puts "Do you need more codes? Type Y for yes or N for no"
        more = gets.chomp
        
        while more == "Y" 
        puts "                                                       "
        puts " ******************************************************"
        puts "                                                       "
        puts "We've got even more codes for you! And away we go!!".colorize(:red)
        puts "                                                       "
        puts " ******************************************************"
        get_codes
        more_codes
        end
        goodbye
    end
    #Need to make the program loop back to get_codes while Y, if N then run the goodbye method.

    def goodbye 
        puts "Thanks for searching your airports with us. Travel safely!".colorize(:red)
    end

    def list_codes
        Airport.all 
    
    end

end

