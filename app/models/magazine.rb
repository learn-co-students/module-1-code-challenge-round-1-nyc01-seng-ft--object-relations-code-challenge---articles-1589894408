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
    article_titles = []
    Article.all.select do |article|
      if article.magazine == self
        article_titles << article.title
      end
    end
    article_titles
  end

  def all_contributions
    contributors = []
    Article.all.select do |article|
      if article.magazine == self
        contributors << article.author
      end
    end
    contributors
  end

  def contributing_authors
    contributing_authors = Hash.new(0)
    all_contributions.each do |contributor|
      contributing_authors[contributor] += 1
    end
      contributing_authors.select do |contributor, v|
          v > 2
      end
  end
end
