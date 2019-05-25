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
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end

end
