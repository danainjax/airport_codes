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
        puts ""
        puts " ******************************************************"
        puts ""
        puts "Welcome to the Airport Codes Finder. Let's get started!".colorize(:red)
        puts ""
        puts " ******************************************************"
    end
    

    def get_codes  
        puts ""
        puts "Where are you traveling to? (Enter city, or state, or country)"
        puts ""
        puts " ******************************************************"
        puts ""
        city = gets.chomp
        puts ""
        # puts API.new.airports_hash(city)
        airports = API.new.airports_hash(city)
        #this is where the parsed JSON data returns an array of hashes
        #now...iterate thru the array of hashes and puts out the code and name instead of hard coding 
        airports.each do |airport|
            airport_object = Airport.new(airport["code"], airport["name"])
            # puts "#{airport["code"]} is the airport code for #{airport["name"]}"
            puts "#{airport_object.code} is the airport code for #{airport_object.name}"
              # raise Airport.all.inspect
            puts ""
            puts " ******************************************************"
            puts ""
        end
        
    end
#         !-- BUGS LIST:
# Need to find a way to display an error message if no data??? --> if statement

    def more_codes

        loop do
        puts "Do you need more codes? Type Y for yes or N for no"
        puts ""
        puts " ******************************************************"
        puts ""
        answer = gets.chomp
        if answer != 'Y'
        break
        end
        puts "                                                       "
        puts " ******************************************************"
        puts "                                                       "
        puts "We've got even more codes for you! And away we go!!".colorize(:red)
        puts "                                                       "
        puts " ******************************************************"
        get_codes
        end  
    end

    def goodbye 
        puts ""
        puts " ******************************************************"
        puts ""
        puts "Thanks for searching your airports with us. Travel safely!".colorize(:red)
        puts ""
        puts " ******************************************************"
        puts ""
    end

    def list_codes
        puts ""
        puts "**** Here is a list of all codes searched: ****".colorize(:red)
        airports_array = Airport.all 
        airports_array.each do |airport|
        puts ""
            puts "#{airport.name} // Airport code : #{airport.code}".colorize(:blue)
        end

        #iterate through array of Airport.all and puts out the airports with code and name
    end

end

