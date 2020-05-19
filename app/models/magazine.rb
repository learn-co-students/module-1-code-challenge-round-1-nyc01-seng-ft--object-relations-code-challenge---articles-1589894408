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
    Article.all.select do |articles|
      articles.magazine == self
    end
  end

  def contributors
    self.articles.map do |articles|
      articles.author
    end
  end


  def self.find_by_name(magazine_name_string)
    Magazine.all.find do |magazines|
      magazines.name == magazine_name_string
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end



  def contributing_authors
    matching_articles = self.articles.select do |article|
        article.count(author) > 2
    end
    matching_articles.map do |articles|
      articles.author
    end
  end


end
