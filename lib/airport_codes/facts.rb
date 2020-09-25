class Facts

@@all = []

attr_reader :list_item

    def initialize(list_item)
        @list_item = list_item
        @@all <<self.list_item
    end

    def self.all
        @@all
    end
    

end
