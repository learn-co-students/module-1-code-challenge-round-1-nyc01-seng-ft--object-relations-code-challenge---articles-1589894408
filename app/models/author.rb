class Author
  attr_reader :name
  attr_accessor :article, :magazine
  @@all  = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|articles| articles.author== self}
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def magazines_not_uniq
    Magazine.all.select {|magazines| magazines.author == self}
  end

  def magazines
    self.magazines_not_uniq.uniq
  end

  def topic_areas
    self.magazines_not_uniq.select {|magazine| magazine.category}.uniq
  end
end
