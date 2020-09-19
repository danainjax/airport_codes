class Airport

    @@all = []

    attr_accessor :code, :display_name

    def initialize(code, display_name)
        @code = code
        @display_name = display_name
        @@all << self
    end

    def self.all
        @@all
    end


end
