class Article
attr_accessor :magazine, :author

 def initialize(magazine, author)
    @magazine = magazine
    @author = author
 end 

 binding.pry

end


#### Article

# - `Article#initialize(author, magazine, title)`
#   - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
#   - An article **cannot** change its author, magazine, or title after it is has been initialized.
# - `Article#title`
#   - Returns the title for that given article
# - `Article.all`
#   - Returns an array of all Article instances
