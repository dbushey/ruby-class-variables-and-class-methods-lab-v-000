require 'pry'

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
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
    binding.pry
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
    @@genres.each do |genre|
      @@genre_count[genre] += 1
    end
    @@genre_count
  end

  def self.artists
    #returns hash with all artists as key and artist songs number as the key value
  end

end
