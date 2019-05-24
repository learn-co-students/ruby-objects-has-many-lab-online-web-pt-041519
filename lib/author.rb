class Author
  attr_accessor :name, :author, :posts
  @@authors = []

  def initialize(name = " ")
    @name = name
    @posts = []
    @@authors << self
  end

  def posts
    @posts
  end

  def add_post(title)
    title.author = self
    @posts << title
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.authors
    @@authors
  end

  def self.post_count
    self.authors.map {|author| author.posts.length }.reduce(:+)
  end



end
