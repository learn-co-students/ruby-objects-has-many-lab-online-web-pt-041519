class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end  
  
  def add_post(title)
    @posts << title
    title.author = self
  end  
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
  end  
  
  def self.post_count
    Post.all.count
  end
end  