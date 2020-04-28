
class Song
  attr_accessor :artist, :song, :songs, :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end


  def self.all
    @@all
  end

  def artist_name
      if self.artist
        return self.artist.name
      else
        nil
      end
  end


end