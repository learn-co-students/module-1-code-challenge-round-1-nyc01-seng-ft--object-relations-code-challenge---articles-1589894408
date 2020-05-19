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

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end

  def contributors
    articles.map { |article| article.author }.uniq
  end

  def article_titles
    articles.map {|article| article.title } 
  end

  def contributing_authors
    contributor_article_count
    .select{ |author_and_count|
      author_and_count.values[0] > 2
  }
  end

  # Helper methods
  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def contributor_article_count
    contributors.map { |contributor|
      {
        "#{contributor}" =>
        articles.count { |article|
          article.author == contributor 
        }
      }
    }
  end
end
