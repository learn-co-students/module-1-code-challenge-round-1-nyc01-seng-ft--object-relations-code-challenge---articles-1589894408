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

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    articles.map do |article|
      article.author
    end
  end

  def self.find_by_name(name)
    Magazine.all.select do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  # def contributing_authors
  #   contributors.select do |contributor|
  #     contributor.article > 2
  #   end
  # end

end

# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine
