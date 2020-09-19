class Scraper
    require 'nokogiri'
    require 'open-uri'

    attr_reader :site

    def initialize
        @site = "https://scottscheapflights.com/glossary/airport-code"
    end

    # html = open("https://scottscheapflights.com/glossary/airport-code")
    # doc = Nokogiri::HTML(html)

    def get_general_info
        scotts = Nokogiri::HTML(open(self.site))
        definition = scotts.css("blockquote")
        puts definition.text.strip
    end

end