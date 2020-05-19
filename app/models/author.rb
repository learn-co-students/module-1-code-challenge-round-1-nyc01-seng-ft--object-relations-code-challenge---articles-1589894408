class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles
   Article.all.select { |a| a.author == self }
  end

  def magazines
   self.articles.map { |a| a.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
   self.magazines.map { |m| m.category }.uniq
  end
end
