
require 'open-uri'
require 'json'
require 'uri'
require 'net/http'
require 'openssl'

class API

    def airports_hash(city)
        url = URI("https://tripadvisor1.p.rapidapi.com/airports/search?query=#{city}")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'tripadvisor1.p.rapidapi.com'
        request["x-rapidapi-key"] = 'bcf2b9ea4amsh836836c63c4e777p1e4642jsnda697c5a6a20'

        response = http.request(request)
        json = response.read_body 

        JSON.parse(json)
        # data["airports"].each do |airport|
        #     Airport.new(airport["code"], airport["name"])
        # end
        
       
    end

end