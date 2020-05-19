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

  def self.find_by_name(name)
   Magazine.all.find{ |m| m.name == name}
  end

  def self.all
   @@all
  end

end
