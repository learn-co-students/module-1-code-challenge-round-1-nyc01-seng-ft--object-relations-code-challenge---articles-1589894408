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
    contributors = []
    Article.all.select do |article|
      if article.magazine == self
        contributors << article.author
      end
    end
    contributors.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end
  
  def article_titles
    Article.all.select do |article|
      if article.magazine == self
        article.title
      end
    end
  end

  def contributing_authors
    contributing_authors = []
    if self.articles.count > 2
      contributing_authors << self
    end
    contributing authors
  end
end
