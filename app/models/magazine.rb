class Magazine
  attr_accessor :name, :category

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
    articles.map { |article| article.author }.uniq
  end


  # Helper methods
  def articles
    Article.all.select { |article| article.magazine == self }
  end
end
