class Author
  attr_reader :name


  def initialize(name)
    @name = name.to_s
  
  end

  def articles 
    Article.all.select do |article_instance|
      article_instance.author == self
    end
  end

  def magazines 
    Magazine.all.map do |magazine_instance|
      magazine_instance.author
    end
  end

def. add_article (magazine , title)
   magazines.find
end

def topic_areas
  Magazines.all.map do |magazine_instance|
    magazine_instance.category
  end
end.t_s




end
