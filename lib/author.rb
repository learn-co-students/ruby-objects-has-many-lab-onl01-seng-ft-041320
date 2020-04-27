class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        #post.author = betty
        Post.all.select {|post| post.author == self}
       
    end

    def add_post(post)
        post.author = self
        @posts << post
    end

    def add_post_by_title(post_titel)
        post = Post.new(post_titel)
        post.author = self
        @posts << post
    end

    def self.post_count
        Post.all.count
    end
end