require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

rachel = Author.new("Rachel Carson")
jk = Author.new("J. K. Rowling")
lauren = Author.new("Lauren Duca")

nature = Magazine.new("National Geographic", "Nature")
culture = Magazine.new("Rolling Stone", "popular culture")
fashion = Magazine.new("Vogue", "Fashion")

article1 = Article.new()


### DO NOT REMOVE THIS
binding.pry

0
