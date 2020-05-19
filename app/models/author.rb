class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select{|x| x.author == self}
  end

  def magazines
    self.articles.map{|x| x.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

  #Helper method
  #return an array of the author's articles from an specific magazine 
  def articles_by_magazine(magazine)
      self.articles.select{|x| x.magazine == magazine}
  end

  def topic_areas
    self.magazines.map{|x|x.category}.uniq
  end
end
