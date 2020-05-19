class Author

  attr_reader :name

  def initialize(name)
    @name = name
  
  end


end


# #### Author

# - `Author#articles`
#   - Returns an array of Article instances the author has written
# - `Author#magazines`
#   - Returns a **unique** array of Magazine instances for which the author has contributed to

# #### Author

# - `Author#add_article(magazine, title)`
#   - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
# - `Author#topic_areas`
#   - Returns a **unique** array of strings with the categories of the magazines the author has contributed to
