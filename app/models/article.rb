class Article
    attr_reader :author, :magazine, :title

    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title

        Article.all << self
    end

    def self.all
        # Returns an array of all Article instances
        @@all
    end
    


    def author
        # Returns the author for that given article
        Article.all.find do |article|
            article.title == self
            article.author
        end
    end

    def magazine
        Atricle.all.select do |art|
            art.author
    end.uniq
end
end
