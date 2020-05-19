class Author
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
      ##even tho they are not asking for all author instances as a reader im following single source of truth 
  end

  def articles
    Article.all.select do |v|
      v.author == self
    end
  end

  def magazines
    articles.map do |v|
      v.magazine
    end.uniq
  end


end
