class Author 
  
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
    #binding.pry
  end

  # def self.author
  #   self
  # end

  # def my_articles(author)
  #   self.author.map do |author|
  #     author.article == article
  #     binding.pry
  #   end
  # end

  def add_article

  end
end


#### Author

# - `Author#articles`
#   - Returns an array of Article instances the author has written
# - `Author#magazines`
# #   - Returns a **unique** array of Magazine instances for which the author has contributed to
# `Author#add_article(magazine, title)`
#   - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
# - `Author#topic_areas`
#   - Returns a **unique** array of strings with the categories of the magazines the author has contributed to
