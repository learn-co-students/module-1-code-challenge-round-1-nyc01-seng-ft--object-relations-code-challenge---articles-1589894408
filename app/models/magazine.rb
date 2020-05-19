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
      by_name.name
    end
  end

  def article_titles
    
  end

  def contributing_authors
  end


end
