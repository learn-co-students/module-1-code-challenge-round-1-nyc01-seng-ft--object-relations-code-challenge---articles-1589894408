class Magazine
  @@all = [] 
  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def self.all
    @@all
  end

  def articles 
    # A 'Helper Method' that returns an Array 

end

#### Magazine

- `Magazine#contributors`
  - Returns an array of Author instances who have written for this magazine