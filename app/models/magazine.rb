class Magazine
  attr_accessor :name, :category

@@all = []
  
def initialize(name, category)
    @name = name.to_s
    @category = category.to_s
    @@all << self
     
  end

  def contributers 
    Author.all.map do |author_instance|
      author_instance.author
    end
  end

    def self.find_by_name
      Magazine.all.find do |mag_ins|
        mag_ins.name == name
      end
    end

    def article_titles
      Articles.all.select do |art_ins|
      art_ins.article == title
      end
    end

    def contributing_authors 
      Articles.all select do |articles_ins|
        articles_ins.author > 2
      end
    end

        




end
