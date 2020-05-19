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

  def articles
    Article.all.select do |v|
      v.magazine == self 
    end
  end



  # Returns an array of Author instances who have written for this magazine
  def contributors
    articles.map do |v|
      v.author 
    end
  end


end
