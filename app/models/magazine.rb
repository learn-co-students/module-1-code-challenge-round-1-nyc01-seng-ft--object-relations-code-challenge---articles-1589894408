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
  def contributors
    Article.all.select do |art|
      art.magazine == self
    end
  end
  def self.find_by_name(name)
    Magazine.all.find do |mag|
      mag.name == name
    end
  end
  def article_titles
    contributors.map do |m|
      m.title
    end
  end
  def contributing_authors
    # - Returns an array of 
    # have written more than 2 articles for
    #  the magazine
    contributors.all.each do |m|
      m.article.conut
      if m.article.count > 2
        
      end
  end


end
