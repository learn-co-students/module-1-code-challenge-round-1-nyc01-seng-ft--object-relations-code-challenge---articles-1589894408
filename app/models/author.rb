class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all 
    @@all
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    Article.all.select do |article|
      article.authors == self
  end


end
