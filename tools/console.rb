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

article1 = Article.new(author1, magazine1, "Lebron James")



### DO NOT REMOVE THIS
binding.pry

0
