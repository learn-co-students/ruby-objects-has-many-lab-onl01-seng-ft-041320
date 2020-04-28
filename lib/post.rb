class Post
  attr_accessor :author, :title
 
  @@all = []
 
  def initialize(name)
    @title = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def author_name
    if (self.author.nil?)
      return nil
  else
    self.author.name
  end
end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  
end