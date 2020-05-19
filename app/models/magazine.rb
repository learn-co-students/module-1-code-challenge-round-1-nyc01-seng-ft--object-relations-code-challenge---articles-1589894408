class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select { |ar| ar.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find { |m| m.name}
  end

  def article_titles
    Article.all.map { |ar| ar.title}
  end

end
