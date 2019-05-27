class Artist 

  attr_accessor :name, :songs
 
  @@all_songs = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all_songs << self
  end 
  
  def add_song(song)  
    song.artist = self
    @songs << song
  end 
  
  def add_song_by_name(song_name)
    name = Song.new(song_name)
    self.add_song(name)
  end 
  
  def self.song_count
    Song.all.count
  end 
  
end 

