require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Dylan")
author2 = Author.new("Sam")
author3 = Author.new("Nick")
author4 = Author.new("Grant")
mag1 = Magazine.new("campaign", "politics")
mag2 = Magazine.new("nfl", "sports")
mag3 = Magazine.new("souflee", "cooking")
mag4 = Magazine.new("souflee", "hunting")
article1 = Article.new(author1, mag1, "Sanders")
article2 = Article.new(author1, mag1, "Biden")
article3 = Article.new(author1, mag1, "Trump")
article4 = ()



### DO NOT REMOVE THIS
binding.pry

0
