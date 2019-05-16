require 'pry'
class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
   Song.all.select {|song| song.artist == self}
  end

  def add_song(song) 
    song.artist = self
  end
  
  def add_song_by_name(name)
    song_instance = Song.new(name)
    add_song(song_instance)
  end
  
  def self.song_count
    array = []
    array = Song.all.select {|song| song.name}
    array.length
  end


end

# adele.songs.las.name
# adele is an instance of artist
# adele = Artist.new
# adele.songs is calling the IM songs on adele
# adele.songs gives us an array of all songs with their artist set to self (instance of artist, or adele)
# adele.songs.last access the last item in that array
# the last one we created
# adele.songs.last.name is calling the name method on the array


