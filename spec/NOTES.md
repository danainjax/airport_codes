** Notes add to test git push **

Building my CLI Gem

<!-- 1. Planning the gem, imagine the interface
2. Start with a project structure= GOOGLE
3. Start with the entry point- the file run
4. force that to build the CLI interface
5. Stub out the interface
6. Start making things real
7. Discover objects
8. Program -->

1. Flow
User starts app. 
User Story: User is a traveler looking to take a trip. 
Starts somewhere and ends somewhere. 
Need to get user input of start and end points and return airport codes for closest airports.
<!-- Ask if more than one destination.  -->
<!-- Edge case circle trip instead of simple round trip.  -->
Edge case: Another trip (Loop)

"Hello Traveler, where are you starting from?"
"Where are you traveling to?"
"Your airport codes are XXX to XXX"
"Enjoy your trip from city variable to city variable"
"Any more trips to plan?, We have those airport codes!"

If time allows- fun fact about airport codes at closing.
Closing: "Thanks for searching your airports with us. Travel safely!"
2. Classes
    a. Class relationships


A command line interface for finding the closest airport codes to a particular city. Uses Trip Advisor API for airport codes as data.

User Story: User is a traveler looking to take a trip. 
Starts somewhere and ends somewhere. 
Need to get user input of start and end points and return airport codes for closest airports.
Ask if more than one destination. 
Edge case circle trip instead of simple round trip. 
Edge case: Another trip (Loop)

"Hello Traveler, where are you starting from?"
"Where are you traveling to?"
"Your airport codes are XXX to XXX"
"Enjoy your trip from city variable to city variable"
"Any more trips to plan?, We have those airport codes!"

If time allows- fun fact about airport codes at closing.
Closing: "Thanks for searching your airports with us. Travel safely!"

<!-- BUGS LIST:
Whitefish breaks the program
Smyrna breaks the program
Need to find a way to display an error message if no data??? -->



