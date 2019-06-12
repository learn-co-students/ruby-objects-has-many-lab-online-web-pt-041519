class Post
  attr_accessor :author, :title
 
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    return author.name if author
  end

  def self.all
    return @@all
  end
  
end
