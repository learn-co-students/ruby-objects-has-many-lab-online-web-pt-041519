class Post
  @@all = []
  
  attr_accessor :author, :title
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if !self.author
      return nil
    else
      return self.author.name
    end
  end
  
end

# post = post.new("Blog Post")
# sophie = Author.new("Sophie")
# post.author = sophie
# @author = instance of an author (sohpie) which has @name = 
# post.author_name = "sophie"
