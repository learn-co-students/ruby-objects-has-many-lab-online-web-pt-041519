class Author
  attr_accessor :name
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@authors.map { |author| author.posts.length }.reduce(:+)
  end
end
