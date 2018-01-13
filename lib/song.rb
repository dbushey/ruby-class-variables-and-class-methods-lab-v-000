class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    #returns the total number of songs created
    @@count
  end

  def self.artists
    #returns array with all artists, no duplicates
    @@artists.uniq
  end

  def self.genres
    #returns array with all songs, no duplicates
    @@genres.uniq
  end



  def self.genre_count
    #returns hash with all genres as key and genre songs number as the key value
  end

  def self.artists
    #returns hash with all artists as key and artist songs number as the key value
  end

end
