class Author
  attr_accessor 
  attr_reader :name, :article
#  Returns the name of the author
  def initialize(name)
    @name = name
  
  end
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end
  def articles
    Article.all.select do |art|
      art.author == self
    end
  end
    def magazines
      articles.map do |art|
        art.magazine
      end.uniq
    end
    def topic_areas
#  Returns a **unique** array of strings 
# with the categories of the magazines the a
# uthor has contributed to
  arcticles.map do |art|
   art.magazine.category
    end.uniq
    end
end
