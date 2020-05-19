require_relative '.article.rb'
require_relative '.author.rb'

class Magazine
  
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def contributors
    self.articles.map { |article| article.author }
  end


end
