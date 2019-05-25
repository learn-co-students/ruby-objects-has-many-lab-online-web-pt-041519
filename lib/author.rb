class Author

  @@posty = []

  attr_accessor :name

  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
    @@posty << self
  end

  def add_post(post)
    post.author= self
    @posts << post
  end

  def add_post_by_title(post_name)
    posty = Post.new(post_name)
    self.add_post(posty)
  end

  def self.post_count
    @@posty.collect {|poster| poster.posts.length}.sum
    end

end
