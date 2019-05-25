require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self # Lets song know that the artist is it's artist (Belongs to)
    @songs << song # Lets artist know that the song belongs to it (Has many)
  end

  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.song_count
    @@artists.map { |artist| artist.songs.length }.reduce(:+)
  end
end
