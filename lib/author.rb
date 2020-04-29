class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count
    @@post_count
  end

  def posts
    Post.all.select { |post| post.author == self  }
  end

  def add_post(post_title)
    post_title.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end
end
