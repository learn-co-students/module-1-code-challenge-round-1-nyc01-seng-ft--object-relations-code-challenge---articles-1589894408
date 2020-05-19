class Article
    attr_reader :author, :magazine, :title
    # attr_accessor :author, :agazine
    # just to check something

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

    def self.author
        # Returns the author for that given article
        Article.all.find do |article|
            article.title == self
        end
    end

    def self.magazine
        Article.all.map do |art|
            art.magazine
    end.uniq
end
end
