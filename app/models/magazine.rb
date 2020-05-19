class Magazine
  @@all = [] 
  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def self.all
    @@all
  end

  def articles 
    # a 'helper method' that returns an array of article instances of a magazine
    Article.all.select do |article|
      article.magazine == self 
    end
  end

  def contributors
    # returns an array of Author instances who have written for this magazine
    articles.map do |article|
      article.author 
    end
  end 

  def article_titles 
    # returns an array of the titles of all articles written for that magazine 
    articles.map do |article|
      article.title 
    end
  end

  # def contributing_authors 
  #   # returns an array of authors who have written more than 2 articles for the magazine 
  #   contributors.select do |contributor|
  #     contributor.
  #   end 
  # end 

  def self.find_by_name(name)
    # given a string of a magazine's name, this method returns the first magazine object that matches
    Magazine.all.find do |magazine|
      magazine.name == name 
    end
  end

end

# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine