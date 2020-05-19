class Author
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
      ##even tho they are not asking for ALL author instances as a reader method im following single source of truth 
  end

  def self.all #i know it's not a deliverable
    @@all
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

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

  def topic_areas
    magazines.map do |v|
      v.category
    end.uniq
  end

end
