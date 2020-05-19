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
    writers = []
    Article.all.select do |article|
      article.magazine == self
      writers.push(article.author)
    end
    writers.uniq
  end

  def self.find_by_name(name)
    Magazine.all.select do |mag|
      mag.name == name
    end
  end

  def article_titles
    articles = []
    Article.all.select do |article|
      if article.magazine == self
      articles.push(article.title)
      end
    end
    articles
  end


end
