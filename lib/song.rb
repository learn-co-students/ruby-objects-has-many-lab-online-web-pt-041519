class Song
    attr_accessor :name, :artist
    @@all = [] #a class variable set to an array

    def initialize(name)
        @name = name # initialized with an argument of a name
        @@all << self #pushes new instances into a class variable called @@all upon initialization
    end

    def self.all  #class method
        @@all     #returns an array of all song instances that have been created
    end

    def artist_name
        artist.name if artist #knows the name of its artist returns nil if the song does not have an artist
    end
end
