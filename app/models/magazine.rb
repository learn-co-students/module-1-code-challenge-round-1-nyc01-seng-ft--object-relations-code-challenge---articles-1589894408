class Magazine
  attr_accessor :name, :category

@@all = []
  
def initialize(name, category)
    @name = name.to_s
    @category = category.to_s
    @@all << self
     
  end


end
