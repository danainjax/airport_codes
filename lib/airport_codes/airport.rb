class Airport

    @@all = []

    attr_reader :code, :display_name

    

    def initialize(code, display_name)
        @code = code
        @display_name = display_name
        @@all << self
    end

    def self.all
        @@all
    end


end
