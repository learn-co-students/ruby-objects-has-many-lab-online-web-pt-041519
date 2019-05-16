require_relative "../lib/post.rb"
require 'pry'
class Author 
  attr_accessor :name, :title
  @@posts = []
  def initialize(name)
    @name = name
    @title
  end
  
  def add_post(post1)
    @@posts << post1
    post1.author = self
  end
  
  def posts
    @@posts
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    @@posts.count 
  end
end #class end 