#should belong to artist, 
#have reference to that artist, 
#needs #class variable thath olds all instatnces of every song that's been created in an array, 
#to access that array needs a #class method (self) that returns the class variable holding those instances

class Song
  attr_accessor :artist, :name
 
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
    if (self.artist.nil?)
      return nil
    else
    self.artist.name
  end
end
end