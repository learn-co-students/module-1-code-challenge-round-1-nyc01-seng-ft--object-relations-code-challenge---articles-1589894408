class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def articles #checks 
    Article.all.select do |article|
      article.author == self.name 
    end 
  end 

  def magazines #works but returns an array of articles not an array of magazines so come back later
    self.articles.uniq
  end 

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 

end
