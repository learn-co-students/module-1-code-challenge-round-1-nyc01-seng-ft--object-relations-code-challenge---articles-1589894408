require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Dylan")
author2 = Author.new("Sam")
author3 = Author.new("Nick")
mag1 = Magazine.new("campaign", "politics")
mag2 = Magazine.new("nfl", "sports")
mag3 = Magazine.new("souflee", "cooking")
mag4 = Magazine.new("souflee", "hunting")
article1 = Article.new(author1, mag1, "Sanders")
article2 = Article.new(author1, mag1, "Biden")
article3 = Article.new(author1, mag1, "Trump")
article4 = Article.new(author2, mag2, "knicks")
article5  = Article.new(author2, mag3, "how to souflee")
article6 = Article.new(author2, mag4, "how to souflee and hunt")
article7 = Article.new(author3, mag2, "niners")
article8 = author3.add_article(mag2, "a's")
article9 = author3.add_article(mag2, "baseball")

### DO NOT REMOVE THIS
binding.pry

0
