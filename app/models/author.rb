class Author
  attr_reader :name

  def initialize(name)
    @name = name
  
  end


  def articles
    Article.all.select do |articles|
      articles.author == self
    end
  end


  def magazines
    self.articles.map do |articles|
      articles.magazine
    end.uniq
  end

  def add_article(magazine_instance, title_string)
    Article.new(self, magazine_instance, title_string)
  end
  
  def topic_areas
    self.magazines.map do |magazine|
      magazine.category     
    end.uniq
  end



end
