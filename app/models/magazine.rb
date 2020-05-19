class Magazine
  @@all = []
  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def articles
   Article.all.select { |a| a.magazine == self }
  end

  def contributors
   self.articles.map { |a| a.author }
  end

  def article_titles
    self.article.map { |a| a.title }
  end

  def contributing_authors
    author_count = Hash.new
      self.countributors.each do |author|
    if author_count[author]
       author_count[author] += 1
    else
       author_count[author] = 1
    end
 end
   author_count
  end

  def self.find_by_name(name)
   Magazine.all.find{ |m| m.name == name}
  end

  def self.all
   @@all
  end

end
