class Song
   attr_accessor :name, :artist, :genre

   @@all = []

   def initialize(name)
      @name = name
      @genre = genre
      @@all << self
   end

   def self.all
      @@all
   end

   def artist_name
      if @artist == nil
        return nil
      else
        @artist.name
      end
    end

end 