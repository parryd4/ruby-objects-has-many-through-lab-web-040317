class Artist
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @genres << song.genre
    song.genre.artists << self
  end

  def songs
    @songs
  end

  def genres
    @genres
  end

end
