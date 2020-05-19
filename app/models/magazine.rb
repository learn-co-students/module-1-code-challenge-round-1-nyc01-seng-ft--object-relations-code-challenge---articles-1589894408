class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|a| a.magazine == self}
  end

  def contributors
    articles.map {|a| a.author}
  end

end


# #### Magazine

# DONE - `Magazine#contributors`
        #   - Returns an array of Author instances who have written for this magazine
        
# DONE - `Magazine#initialize(name, category)`
        #   - A magazine is initialized with a name as a string and a category as a string
        #   - The name and category of the magazine **can be** changed after being initialized.

# DONE - `Magazine#name` - Returns the name of this magazine

# DONE - `Magazine#category` - Returns the category of this magazine

# DONE - `Magazine.all` - Returns an array of all Magazine instances