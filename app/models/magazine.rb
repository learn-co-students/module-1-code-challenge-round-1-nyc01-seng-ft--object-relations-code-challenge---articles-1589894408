class Magazine
  
  attr_accessor :name, :category, :writers 
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @writers = []
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def contributors #ok this checks and works
    Article.all.each do |article|
      if article.magazine == self.name 
        @writers.push(article.author)
      end 
    end
    return @writers 
  end 

end
