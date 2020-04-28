class Post

  attr_accessor :post, :title, :author, :name, :posts

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end



  def author_name
    if self.author
      return self.author.name
  else
    nil
  end
  end

end