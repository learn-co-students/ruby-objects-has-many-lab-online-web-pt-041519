class Artist
  attr_accessor :name, :songs, :song_count

 @@songs_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@songs_count << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@songs_count << song
    song.artist = self
  end

  def self.song_count
    @@songs_count.length
  end

end
