class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.map {|post| post if post.author == self}
  end

  def add_post(title)
    title.author = self
  end

  def add_post_by_title(title)
    Post.new(title)
    Post.new(title).author = self
  end

  def self.post_count
    Post.all.select {|post| post.author}.length
  end
end
