require "pry"
class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if (self.artist==nil)
      return nil
    else
      self.artist.name
    end
  end
end

# song = Song.new("Fried Chicken")
# binding.pry
