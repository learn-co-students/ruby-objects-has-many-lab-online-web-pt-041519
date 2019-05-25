class Artist

  @@testy = []

  attr_accessor :name

  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    @@testy << self
  end

  def add_song(song)
    song.artist= self  # Lets song know that the artist is it's artist (Belongs to)
    @songs << song    # Lets artist know that the song belongs to it (Has many)
  end

  def add_song_by_name(song_name)
    tester = Song.new(song_name) # tester is the variable for a new song created along w/ "" song name
    #songs << song_name
    self.add_song(tester) # self is the artist. calling on # 15 (line) in assocation with the variable
  end

  def self.song_count
    @@testy.collect {|tracks| tracks.songs.length}.sum
  end
end
