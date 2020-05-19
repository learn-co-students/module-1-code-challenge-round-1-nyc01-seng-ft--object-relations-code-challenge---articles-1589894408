class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select do |article_instance|
      article_instance.author == self
    end 
  end 

  def magazines
    articles.map do |article_instance|
      article_instance.magazine
    end.uniq 
  end

  def add_article(magazine, title)
    Article.new(magazine, self, title)
  end

  def topic_areas
  end
   


  

  # binding.pry

end

#### Author

# - `Author#add_article(magazine, title)`
#   - Given a magazine (as Magazine instance) and a title (as a string), 
# creates a new Article instance and associates it with that author 
# and that magazine.

# - `Author#topic_areas`
#   - Returns a **unique** array of strings with the categories of the 
# magazines the author has contributed to



#### Author

# - DONE `Author#articles`
#   - Returns an array of Article instances the author has written

# -DONE `Author#magazines`- Returns a **unique** array of Magazine instances for which the author has contributed to


#### Author

# - `Author#initialize(name)`
#   - DONE - An author is initialized with a name, as a string.
#   - DONE- A name **cannot** be changed after it is initialized.
# - `DONE Author#name` - Returns the name of the author