class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all 
    @@all
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def articles 
    Article.all.select do |article| 
      article.author == self
    end
  end

  def topic_areas
    self.articles.map do |topic|
      topic.magazine.category
  end.uniq
end



end
