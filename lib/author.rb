class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name= name
    @posts = []
  end

  def add_post(post)
    post.author= self
    @posts << post
  end

  def self.all
    @all
  end

end
