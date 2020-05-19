require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Ant")
author2 = Author.new("Kem")
author3 = Author.new("james")

magazine1 = Magazine.new("TIME", "politics")
magazine2 = Magazine.new("forbes", "money")
magazine3 = Magazine.new("vogue", "fashion")

article1 = Article.new(author2,magazine2,"Hello world")
article2 = Article.new(author1,magazine1,"Hello mundo")
article3 = Article.new(author3,magazine3,"Hello fashion")
article4 = Article.new(author1,magazine1,"How to code")
article5 = Article.new(author1,magazine1,"Hopefully I pass")
article6 = Article.new(author2,magazine1,"first post")








### DO NOT REMOVE THIS
binding.pry

0
