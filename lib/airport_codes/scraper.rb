class Scraper
    require 'nokogiri'
    require 'open-uri'

    attr_reader :site

    def initialize
        @site = "https://scottscheapflights.com/glossary/airport-code"
    end

    # html = open("https://scottscheapflights.com/glossary/airport-code")
    # doc = Nokogiri::HTML(html)
    def scrape 
        what_is_an_airport_code
        different_types
        three_letters
        how
        how_many
    end


    def what_is_an_airport_code
        scotts = Nokogiri::HTML(open(self.site))
        definition = scotts.css("blockquote")
        definition.text.strip
        Facts.new(definition.text.strip)
    end

    def different_types
        scotts = Nokogiri::HTML(open(self.site))
        types_array = scotts.css("p")
        types_array[1..3].text.strip
        Facts.new(types_array[1..3].text.strip)
    end

    def three_letters
        scotts = Nokogiri::HTML(open(self.site))
        types_array = scotts.css("p")
        types_array[4..5].text.strip
        Facts.new(types_array[4..5].text.strip)
    end

    def how
        scotts = Nokogiri::HTML(open(self.site))
        types_array = scotts.css("p")
        types_array[6..8].text.strip
        Facts.new(types_array[6..8].text.strip)
    end

    def how_many
        scotts = Nokogiri::HTML(open(self.site))
        types_array = scotts.css("p")
        types_array[9..10].text.strip
        Facts.new(types_array[9..10].text.strip)
    end


end