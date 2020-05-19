require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Ronan")
author2 = Author.new("Maria")
author3 = Author.new("Denise")
author4 = Author.new("Gerry")

magazine1 = Magazine.new("Sports Illustrated", "Sports")
magazine2 = Magazine.new("TV Guide", "Entertainment")
magazine3 = Magazine.new("Slam", "Sports")
magazine4 = Magazine.new("NY Times", "News")

article1 = Article.new(author1, magazine1, "Lebron James")
article2 = Article.new(author1, magazine1, "Jordan")
article3 = Article.new(author2, magazine2, "Reviews")
article4 = Article.new(author3, magazine3, "Sports Corona Virus!")
article5 = Article.new(author4, magazine1, "Game 7")
article6 = Article.new(author1, magazine4, "Social Distancing")

### DO NOT REMOVE THIS
binding.pry

0
