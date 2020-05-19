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

  def add_article(magazine, title)
    # given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    Article.new(self, magazine, title)
  end

  def topic_areas 
    # returns a unique array of strings with the categories of the magazines the author has contributed to
    magazines.map do |magazine|
      magazine.category
    end
  end 

end