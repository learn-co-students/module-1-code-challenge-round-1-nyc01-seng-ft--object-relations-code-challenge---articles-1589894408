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
        @@all
    end

    # def author
    #     self.all.map { |ar| ar.author}
    # end
end
