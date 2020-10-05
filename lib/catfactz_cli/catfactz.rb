class Catfactz

    attr_accessor :text, :type, :user

    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |m, j|
            self.send("#{m}=", j) if self.respond_to?("#{m}=")
        end
        save
    end

    def save
        @@all <<self
    end

    def self.all
        @@all
    end
    



end
