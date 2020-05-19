require_relative './article.rb'
require_relative './author.rb'

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

  def self.find_by_name(name)
    @@all.find { |magazine| magazine.name.include?(name)}
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def contributors
    self.articles.map { |article| article.author }
  end

  def contributor_article_count
    count = Hash.new(0)

    self.contributors.each do |contributor| 
      count[contributor.name] += 1
    end
  end

  def contributing_authors
    more_than_two_hash = self.contributor_article_count.select { |k, v| v > 2 }
    more_than_two_hash.keys
  end

  def article_titles
    self.articles.map { |article| article.title }
  end

end
