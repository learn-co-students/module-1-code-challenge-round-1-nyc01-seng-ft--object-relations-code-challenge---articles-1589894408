class Author
  attr_reader :name
  attr_accessor :article
  @@all  = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|articles| article.author == self}
  end

  def magazines
    Magazine.all.select {|magazines| magazine.author == self}
    .uniq
  end
end
