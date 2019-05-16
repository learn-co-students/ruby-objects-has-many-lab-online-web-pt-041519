require_relative "../lib/song.rb"
require 'pry'
class Artist 
  attr_accessor :name, :artist
  @@songs = []
  def initialize(name)
    @name = name
    @artist
  end
  
  def add_song(song)
    @@songs << song
    song.artist = self
  end
  
  def songs
    @@songs
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    @@songs.count 
  end
end #class end 