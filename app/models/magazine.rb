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
  binding.pry

  def contributors
    Article.all select do |art_ins|
      art_ins.magazine == self
    end
  end 


  # def contributors  #2 steps, list mag articles, iterate thru mag articles to find authors
  # end



end

# - `Magazine.find_by_name(name)`
#   - Given a string of magazine's name, this method returns the first magazine object that matches
# - `Magazine#article_titles`
#   - Returns an array strings of the titles of all articles written for that magazine
# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine

# #### Magazine

# - `Magazine#contributors`
#   - Returns an array of Author instances who have written for this magazine


#### Magazine

# -DONE  `Magazine#initialize(name, category)` - A magazine is initialized with a name as a string and a category as a string
#  DONE - The name and category of the magazine **can be** changed after being initialized.
# -DONE `Magazine#name` - Returns the name of this magazine
# -DONE  `Magazine#category` - Returns the category of this magazine
# -DONE `Magazine.all` - Returns an array of all Magazine instances