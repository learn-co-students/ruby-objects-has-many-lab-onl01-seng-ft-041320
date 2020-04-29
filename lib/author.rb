class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def add_post_by_title(title)
    add_post(Post.new(title, self))
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Post.all.length
  end
end
