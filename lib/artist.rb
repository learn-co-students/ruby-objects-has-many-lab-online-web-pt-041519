class Artist
  
  attr_accessor :name  
  @@all = []


  def initialize(name)
    @name = name 
    @songs = []
  end 

  def add_song(songs)
    @songs << songs
    songs.artist = self
  end

  def songs
    @songs
  end 

  def add_song_by_name(name)
    add_song(Song.new(name))
  end
  
  def self.song_count
    Song.all.count
  end 
  
 
  end  

