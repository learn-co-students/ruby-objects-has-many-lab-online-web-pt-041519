require_relative "../lib/author.rb"
class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
    @author = author
  end
  
  def self.all 
    @@all.each do |posta|
      posta.title
    end
  end
  
  def author_name
    if self.author == nil
      return nil
    end
    self.author.name
  end

end #end post