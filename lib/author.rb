require 'pry'

class Author

  attr_accessor :name, :author

  @post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
      Post.all.length
    end

end
