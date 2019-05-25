require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
    @artist = artist
  end

  def self.all
    @@all
  end

  def artist_name

  end

end
