require 'pry'
class Author
  attr_reader :name, :author, :magazine

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |art|
      art.author == self
    end
  end

  
  def magazines
    Article.select do |art|
      art.magazine == self
    end
  end

  ## in the above, the goal was to iterate over the Article array
  ## and select out the magazine for which the author wrote an article - it returns an empty array

  def topic_areas
  ## ran out of time, this one also hung me up pretty well
  ## I know that we would need to iterate through Article, and then Magazine, to return the category
  
  end

end
