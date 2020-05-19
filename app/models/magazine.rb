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


end


#### Magazine

# -DONE  `Magazine#initialize(name, category)` - A magazine is initialized with a name as a string and a category as a string
#  DONE - The name and category of the magazine **can be** changed after being initialized.
# -DONE `Magazine#name` - Returns the name of this magazine
# -DONE  `Magazine#category` - Returns the category of this magazine
# -DONE `Magazine.all` - Returns an array of all Magazine instances