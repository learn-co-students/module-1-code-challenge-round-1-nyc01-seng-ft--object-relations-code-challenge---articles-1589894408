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

end