class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    Article.all.select { |article| article.author == self  }
  end

  def magazines
    Magazine.all.select { |magazine| magazine.contributors.include?(self)  } 
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end
end
