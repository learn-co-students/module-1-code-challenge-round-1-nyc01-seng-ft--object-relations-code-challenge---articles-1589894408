require 'pry'

class Author

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    Article.all.select do |articles_for_author|
      articles_for_author.author == self
    end
  end

  def magazines
    articles.map do |uniq_magazines|
      uniq_magazines.magazine
    end.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    articles.map do |topics|
      # binding.pry
      topics.magazine.category
    end.uniq
  end

  # def magazines_auth
  #   articles.select do |magazines|
  #     magazines.author == self
  #   end
  # end

  

end
