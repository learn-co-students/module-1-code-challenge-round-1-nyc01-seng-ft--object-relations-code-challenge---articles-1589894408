class Author
  @@all = [] 
  attr_reader :name

  def initialize(name)
    @name = name
    Author.all << self
  end
  
  def self.all
    @@all 
  end

end