class Airport

    @@all = []

    attr_accessor :code, :name

    def initialize
        @code = code
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


end
