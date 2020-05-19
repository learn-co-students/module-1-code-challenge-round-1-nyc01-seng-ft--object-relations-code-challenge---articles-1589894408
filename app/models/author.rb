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

  binding.pry

end



#### Author

# - DONE `Author#articles`
#   - Returns an array of Article instances the author has written

# -DONE `Author#magazines`- Returns a **unique** array of Magazine instances for which the author has contributed to


#### Author

# - `Author#initialize(name)`
#   - DONE - An author is initialized with a name, as a string.
#   - DONE- A name **cannot** be changed after it is initialized.
# - `DONE Author#name` - Returns the name of the author