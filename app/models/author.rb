class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{|a| a.author == self}
  end

  def magazines
    articles.map{|a| a.magazine}.uniq
  end

end


# #### Author

# DONE - `Author#articles` - Returns an array of Article instances the author has written

# DONE - `Author#magazines`
        #   - Returns a **unique** array of Magazine instances for which the author has 
        #   contributed to

# DONE - `Author#initialize(name)`- An author is initialized with a name, as a string.
#      - A name **cannot** be changed after it is initialized.

# DONE - `Author#name` - Returns the name of the author