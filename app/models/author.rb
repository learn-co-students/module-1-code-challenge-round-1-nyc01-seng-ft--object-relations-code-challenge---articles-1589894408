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

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map{|m| m.category}.uniq
  end

end


# #### Author

# DONE - `Author#add_article(magazine, title)`
        #   - Given a magazine (as Magazine instance) and a title (as a string), 
        #   creates a new Article instance and associates it with that author and that magazine.

# DONE - `Author#topic_areas`
        #   - Returns a **unique** array of strings with the 
        #   categories of the magazines the author has contributed to

# DONE - `Author#articles` - Returns an array of Article instances the author has written

# DONE - `Author#magazines`
        #   - Returns a **unique** array of Magazine instances for which the author has 
        #   contributed to

# DONE - `Author#initialize(name)`- An author is initialized with a name, as a string.
#      - A name **cannot** be changed after it is initialized.

# DONE - `Author#name` - Returns the name of the author