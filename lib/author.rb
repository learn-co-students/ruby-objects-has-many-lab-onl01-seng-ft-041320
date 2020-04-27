class Author 
  attr_accessor :name
  
  def initialize (name)
    @name = name
    @posts = []
  end
  
  def add_post(a_post)
    a_post.author = self
  end
  
  def posts
    Post.all.select {|a_post| a_post.author == self}
  end
  
  def add_post_by_title(title)
    the_post = Post.new(title)
    add_post(the_post)
  end
  
  def self.post_count
    Post.all.length
  end
  
end