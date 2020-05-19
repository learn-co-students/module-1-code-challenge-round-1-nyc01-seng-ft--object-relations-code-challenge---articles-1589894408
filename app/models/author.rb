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

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |art|
      art.name == self
    end
  end

end
