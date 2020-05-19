class Magazine
  @@all =[]
  attr_accessor :name, :category
# Magazine

# - `Magazine#initialize(name, category)`
#   - A magazine is initialized with a name as a string and a category as a string
#   - The name and category of the magazine **can be** changed after being initialized.
# - `Magazine#name`
#   - Returns the name of this magazine
# - `Magazine#category`
#   - Returns the category of this magazine


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def self.all
    # - `Magazine.all`
    #   - Returns an array of all Magazine instances
    @@all
  end
  def contributors
  # - `Magazine#contributors`
  # - Returns an array of Author instances who have written for this magazine
  athr=[]
  Article.all.each do |art|
    if art.magazine==self
      athr << art.author
    end
  end
end



end
