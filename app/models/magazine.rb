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
  ## ^^^^helper for 'contributors'^^^

  def contributors
    articles.map do |article|
      article.author
    end.uniq #didn't ask for unique but figure we don't want to return an author twice for same mag..
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributing_authors
    contributors.select do |author|
      author.articles.count > 2
    end
  end

end
