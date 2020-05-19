require 'pry'
class Article
    attr_reader :author, :magazine, :title

    @@all = []

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
        Article.all.map do |article|
            binding.pry
            article.author
        end
    end

    def magazine
        # Article.all.
    end


end
