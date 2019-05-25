class Author
  attr_accessor :name
  @@authors = []
  def self.authors
    @@authors
  end


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
    self.add_post(Post.new(title))
  end

  def self.post_count
    self.authors.map { |author| author.posts.length }.reduce(:+)
  end
end
