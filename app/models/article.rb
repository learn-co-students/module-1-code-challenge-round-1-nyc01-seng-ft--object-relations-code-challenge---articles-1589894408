class Article
    attr_reader :title, :author, :magazine
    @@all = []

    def initialize(author, magazine, title)
        @title = title
        @author = author
        @magazine = magazine
        Article.all << self
    end

    def self.all
        @@all
    end
end