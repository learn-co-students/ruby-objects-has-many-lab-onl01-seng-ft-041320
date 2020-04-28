class Author 
  attr_accessor :name
  
  @@postcount = 0 
 
  def initialize(name)
    @name = name
    @postsarray = []
  end
 
  def add_post(title)
    title.author = self
    @postsarray << title
    @@postcount += 1
  end
  
  def add_post_by_title(name) 
    title = Post.new(name)
    @postsarray << title
    add_post(title)
    @@postcount += 1
  end
 
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    @@postcount
  end 
end