class Post

  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
  end
def add_author(author)
@author = author
end
  
  def author_name
    if @author
      return @author.name
    else
      nil
    end
  end
  
  def author=(author)
    @author = author
    author.add_post(self)
  end

  def self.all
    @@all
  end
end