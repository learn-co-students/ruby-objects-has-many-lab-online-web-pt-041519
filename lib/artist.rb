class Artist
   attr_accessor :name, :songs

   @@song_count = 0


   def initialize(name)
      @name = name
      @all_songs = []
   end

   def add_song(song)
      @all_songs << song
      song.artist = self
      @@song_count += 1
   end

   def add_song_by_name(name)
      new_song = Song.new(name)
      @all_songs << new_song
      new_song.artist = self
      @@song_count += 1
   end

   def songs
      @all_songs
   end

   def self.song_count
      @@song_count
   end

end 