class Article
# # Article
 @@all =[]
 attr_reader :title
    #  - An article **cannot** change its author, magazine, or title after it is has been initialized.
    # - `Article#title`
    #   - Returns the title for that given article
 def initialize(title, author, magazine)
    # - `Article#initialize(author, magazine, title)`
    #   - An article is initialized with an author as an 
    #Author object, a magazine as a Magazine object, and title as a string.
    
    @title=title
    @author=author
    @magazine=magazine
    @@all << self
 end

 def self.all
    # - `Article.all`
    #   - Returns an array of all Article instances
    @@all
 end
 def author
    #  - `Article#author`
    #   - Returns the author for that given article
    all.each do |art|
        
        if art==self
           return art.author
        end
    end
  end

   def magazine
    # - `Article#magazine`
    #   - Returns the magazine for that given article
    all.each do |art|
        if art==self
            return art.magazine
        end
    end
end



end
