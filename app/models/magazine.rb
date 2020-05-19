require 'pry'
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
    Article.all.select do |art|
      art.author == self
    end
  end
 ## I was able to get the above to return the authors object array 
 ## while using Map, when using select it returned an empty array

  def self.find_by_name(name)
    Magazine.all.find do |art|
      art.name == name
    end
  end

  def article_count
 ##I needed to define a helper method for contributing authors - ran out of time 
  end

  def contributing_authors
    Article.all.select do |art|
      art.article_count > 2
    end
  end

  def article_titles
    Article.all.select do |art|
      art.title == self
    end
  end

  ## ran out of time on the above, as well - I got it to return
  ## an empty array, I know with time I could get this method to function correctly 

end
