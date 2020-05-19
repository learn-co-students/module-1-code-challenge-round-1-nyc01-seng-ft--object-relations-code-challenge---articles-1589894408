class Magazine
  attr_accessor :name, :category
  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def articles 
    Article.all.select{|x| x.magazine == self}
  end

  def contributors
    self.articles.map{|x| x.author}.uniq
  end

  def article_titles
    self.articles.map{|x| x.title}
  end

  def contributing_authors
    self.contributors.select{|x| x.articles_by_magazine(self).count > 2}
  end

  def self.all 
    @@all 
  end

  def self.find_by_name(name)
    self.all.find{|x| x.name == name}
  end

end
