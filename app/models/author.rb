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

  def articles
    Article.all.select { |ar| ar.author == self}
  end

  def magazines
    articles.map { |ar| ar.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map { |m| m.category}.uniq
  end
end
