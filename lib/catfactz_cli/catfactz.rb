class Catfactz

    attr_accessor :text, :type, :user

    @@all = []

    def initialize(attr_hash)
        attr_hash

    


    def save
        @@all <<self
    end

    def self.all
        @@all
    end
    



end
