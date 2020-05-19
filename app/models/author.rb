class Author
  @@all = [] 
  attr_reader :name

  def initialize(name)
    @name = name
    Author.all << self
  end
  
  def self.all
    @@all 
  end

  def articles 
    # returns an array of Article instances the author has written
    Article.all.select do |article|
      article.author == self 
    end
  end

  def magazines
    # returns a unique array of Magazine instances for which the author has contributed to  
    articles.map do |article|
      article.magazine 
    end
  end

end