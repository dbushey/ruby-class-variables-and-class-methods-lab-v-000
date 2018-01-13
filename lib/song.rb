class Song
  attr_accessor :name, :artist, :genre

  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@song_count += 1
  end

  def self.count
    #returns the total number of songs created
    @@song_count
  end

  def self.genres
    #return array with all songs, no duplicates
    @@genres.uniq
  end

  def self.artists
    #return array with all artists, no duplicates
    @@artists.uniq
  end

end
