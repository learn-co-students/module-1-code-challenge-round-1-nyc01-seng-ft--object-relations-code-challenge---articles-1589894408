class Author
  attr_reader :name


  def initialize(name)
    @name = name
   end

   def articles
    Article.all.select do |article_instance|
      article_instance.author == self 
    end
  end

  def magazines
    magazine_array =[]
    Article.all.each do |instance|
      if instance.author == self
        magazine_array << instance.magazine
      end
    end
   magazine_array.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    topic_array = []
    magazines.map do |magazine|
      topic_array << magazine.category
    end
    topic_array.uniq
  end


end
