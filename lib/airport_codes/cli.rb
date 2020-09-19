require 'colorize'
require 'pry'

class AirportCodes::CLI

    def main
        info_menu
        get_codes
        more_codes
        list_codes 
        fun_facts
        goodbye
              
    end

    def fun_facts
        input = ""
        
            while input != "exit"
                puts""
                puts"******  F U N    F A C T S ****** ".colorize(:red)
                puts "Here you can find fun facts about airport codes."
                puts""
                puts "Choose a number for the item you wish to learn more about.".colorize(:red)
                puts ""
                puts "1. What is an airport code?"
                puts "2. What are the different types of airport codes?"
                puts "3. Why are airport codes three letters?"
                puts "4. How do airports get their codes"
                puts "5. How many airport codes are there?"
                puts "***************************************"
                puts "To quit, type 'exit'. Type 'Y' for more codes.".colorize(:red)
                puts "What would you like to do?"
        
              input = gets.strip
        
              case input
              when "1"
                puts "******************************************************"
                puts Scraper.new.what_is_an_airport_code
                puts "******************************************************"
              when "2"
                puts "******************************************************"
                puts Scraper.new.different_types
                puts "******************************************************"
              when "3"
                puts "******************************************************"
                puts Scraper.new.three_letters
                puts "******************************************************"
              when "4"
                puts "******************************************************"
                puts Scraper.new.how
                puts "******************************************************"
              when "5"
                puts "******************************************************"
                puts Scraper.new.how_many
                puts "******************************************************"
              when "Y"
                puts "******************************************************" 
                get_codes
            end
        end
    end
        
    

    def info_menu
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
            puts "#{airport_object.code} is the airport code for #{airport_object.name}".colorize(:red)
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

