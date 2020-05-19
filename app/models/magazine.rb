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

  def articles 
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    self.articles.map do |contr|
      contr.author
    end
  end

  def self.find_by_name(name)
    self.all.find do |magazine_instance|
      magazine_instance.name == name
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def contributing_authors
    
  end

end
