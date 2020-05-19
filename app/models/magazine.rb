class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end
  
  def self.all
    # Returns an array of all Magazine instances
    @@all
  end

end
