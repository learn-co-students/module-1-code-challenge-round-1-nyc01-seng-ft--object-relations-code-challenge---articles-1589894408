class Magazine
  attr_accessor :name, :category, :author
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Author.all.select {|authors| authors.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find {|magazines| magazines.name == name}
  end

  def articles
    Article.all.select {|articles| articles.magazine == self}
  end

  def article_titles
    self.articles.map {|articles| articles.title}
  end

  def contributing_authors
    more_than_one = []
    self.contributors.select {|contributors| contributors == contributors}
  end
end
