require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Author1")
author2 = Author.new("Author2")
author3 = Author.new("Author2")

magazine1 = Magazine.new("Magazine1", "category1")
magazine2 = Magazine.new("Magazine2", "category2")
magazine3 = Magazine.new("Magazine3", "category3")

article1 = Article.new("Title1", author1, magazine1)
article2 = Article.new("Title2", author2, magazine2)
article3 = Article.new("Title2", author3, magazine3)




### DO NOT REMOVE THIS
binding.pry

0
