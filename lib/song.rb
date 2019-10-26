class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 #class variables
  @@artists = []
  @@genres = []
  
  
  def initialize(name, artist, genre)
    @@count += 1 #keeps count of songs added
    @@artists << artist #artist goes into artist array 
    @@genres << genre #genre goes into genre array
    @name = name #instance variables, for each instance that happens
    @artist = artist
    @genre = genre
  end

  def self.count #class method, allows us to use count outside of class
    @@count
  end

  def self.genres #class method
    @@genres.uniq #gives copy of genres with only unique genres
  end
  
  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    counts = {}
    @@artists.each do |artist|
      if counts[artist] == nil
        counts[artist] = 1
      else 
        counts[artist] +=1
      end
    end
    return counts
  end
  
  def self.genre_count
    counts = {}
    @@genres.each do |genre|
      if counts[genre] == nil
        counts[genre] = 1
      else 
        counts[genre] +=1
      end
    end
    return counts
  end
end 



