class Post 
  
  attr_accessor :author 
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def title
    @title
  end
  
  def self.all
    @@all
  end
  
  # describe '#author_name' do
    # it 'knows the name of its author' do
    #   sophie = Author.new('Sophie')
    #   post.author = sophie
    #   expect(post.author_name).to eq('Sophie')
    # end
  
  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end
  
end