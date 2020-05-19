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

  # def magazines
  #   Article.all
  
  # end

  def add_article(magazine, title)
    New.article(self, magazine, title)
  end


end
