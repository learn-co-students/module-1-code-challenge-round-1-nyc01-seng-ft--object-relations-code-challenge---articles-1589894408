class Author
  attr_reader :name
  attr_accessor :area_of_exp
  @@all = []


  def initialize(name)
    @name = name
    @area_of_exp =[]
    @@all << self
  end

  def self.all
    @@all
  end 

  def articles #checks 
    Article.all.select do |article|
      article.author == self.name || article.author == self 
    end 
  end 

  def magazines #works but returns an array of articles not an array of magazines so come back later
    self.articles.uniq
  end 

  def add_article(magazine, title) #checks and works
    Article.new(self, magazine, title)
  end 

  def topic_areas #omg omg omg it works
    Article.all.each do |article|
      if article.author == self 
        @area_of_exp.push(article.magazine.category)
      end 
    end 
    @area_of_exp.uniq 
  end 
end 
