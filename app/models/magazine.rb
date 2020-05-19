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
    Article.all.select do |all_contributors|
      all_contributors.magazine == self
    end
  end

  def self.find_by_name(name)
    Magazine.all.find do |by_name|
      by_name.name == name
    end
  end

  def article_titles
    contributors.map do |article_titles|
      article_titles.title
    end
  end

  def articles_by
    contributors.map do |by|
      by.author
    end
  end

  # def magazine_art
  #   magazines_auth.select do |article|
  #     article.include? self
  #   end
  # end

  def contributing_authors
    contributors.select do |contrib_author|
      contrib_author.author.count > 2
    end
  end

end
