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
    Article.all.select do |v|
      v.magazine == self 
    end
  end



  # Returns an array of Author instances who have written for this magazine
  def contributors
    articles.map do |v|
      v.author 
    end
  end

  def self.find_by_name(name)
    self.all.find do |v|
      v.name == name
    end
  end


# Returns an array strings of the titles of all articles written for that magazine
  def article_titles
    articles.map do |v|
      v.title
    end
  end

  # Returns an array of authors who have written more 
  # than 2 articles for the magazine
#   def contributing_authors
#     contributors.map do |v|
#       v.name
#     end
# end


end
