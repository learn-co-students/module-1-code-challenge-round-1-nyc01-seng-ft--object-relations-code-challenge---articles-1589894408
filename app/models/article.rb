class Article
    @@all = []
    attr_accessor :title, :authors, :magazines
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        Author.all.select {|authors| authors.article == self}
    end

    def magazine
        Magazine.all.select {|magazines| magazines.article == self}
    end

end
