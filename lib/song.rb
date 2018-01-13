class Song
  attr_accessor :name, :artist, :genre

  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize
    @name = name
    @artist = artist
    @genre = genre
    @@song_count += 1
  end

  def self.count
    @@song_count
  end

  def self.genres
    #return array with all songs, no duplicates
  end

end
