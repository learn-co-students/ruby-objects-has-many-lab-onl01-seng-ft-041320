class Song 
  attr_accessor :name, :artist 

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
  def add_artist(artist)
    @artist = artist
  end
  
  def artist_name
    if  @artist
      return @artist.name
    else 
      nil
    end
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def self.all
    @@all
  end
end