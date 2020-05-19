require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

george = Author.new("George W. Stone")
jk = Author.new("J. K. Rowling")
lauren = Author.new("Lauren Duca")

nature = Magazine.new("National Geographic", "Nature")
culture = Magazine.new("Rolling Stone", "popular culture")
fashion = Magazine.new("Vogue", "Fashion")

article1 = Article.new(george, nature, "Secrets of a Travel Writer")
article2 = Article.new(jk, culture, "Harry Potter")
article3 = Article.new(jk, fashion, "Harry Potter 2")

### DO NOT REMOVE THIS
binding.pry

0
