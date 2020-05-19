class Article

    attr_reader :author , :magazine , :title

    @@all = []


    def initialize (author, magazine, title)
       @author = author
       @magazine = magazine
       @title = title
       @@all << self
    end


    def author 
        self.find do |article_instance|
            article_instance.author == author
        end
    end

    def magazine 
        self.find do |article_instance|
            article_instance.magazine == magazine
        end
    end.to_s
        




end
