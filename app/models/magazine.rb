class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
    #add all your magazine instances to this class variable
    #binding.pry
  end

  def name
    @name
  end
  
  def all_mags(category)
  
  end

  def article_titles
  
  end

  def contributing_authors

  end

binding.pry
end
#### Magazine

# - `Magazine#initialize(name, category)`
#   - A magazine is initialized with a name as a string and a category as a string
#   - The name and category of the magazine **can be** changed after being initialized.
# - `Magazine#name`
#   - Returns the name of this magazine
# - `Magazine#category`
#   - Returns the category of this magazine
# - `Magazine.all`
#   - Returns an array of all Magazine instances

# - `Magazine.find_by_name(name)`
#   - Given a string of magazine's name, this method returns the first magazine object that matches
# - `Magazine#article_titles`
#   - Returns an array strings of the titles of all articles written for that magazine
# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine
