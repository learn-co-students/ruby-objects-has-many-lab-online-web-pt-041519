class Author
    attr_accessor :name, :posts, :author

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post
    end
    
    def add_post_by_title(post)
        post = Post.new(post)
        @posts << post
        post.author = self
    end

    def self.post_count
        Post.all.count 
    end


        
end

