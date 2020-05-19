class Magazine
  
  attr_accessor :name, :category, :writers, :writ_coll 
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @writers = []
    @writ_coll = []
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

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name 
    end 
  end 

  def article_titles #wooooooo this checks and returns 'tester' which is arttwo title
    Article.all.each do |article| 
      if article.magazine == self
        @writ_coll.push(article.title)
      end 
    end 
    @writ_coll
  end 

  def contributing_authors #going to need to set a counter for appearances in contributors
    if self.contributors.count > 2 
      return self.contributors 
    else 
      return "This is a new magazine, give us a minute will ya."
    end 
  end 

end
