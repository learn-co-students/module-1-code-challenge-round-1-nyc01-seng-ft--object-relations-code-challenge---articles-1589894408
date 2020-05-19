require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Author1")
author2 = Author.new("Author2")
author3 = Author.new("Author2")
author4 = Author.new("Author4")
#
magazine1 = Magazine.new("Magazine1", "category1")
magazine2 = Magazine.new("Magazine2", "category2")
magazine3 = Magazine.new("Magazine3", "category3")
magazine4 = Magazine.new("Magazine3", "category1")

article1 = Article.new(author1, magazine1, "Title1")
article2 = Article.new(author2, magazine1, "Title2")
article3 = Article.new(author2, magazine1, "Title3")
article4 = Article.new(author1, magazine1, "Title4")
article5 = Article.new(author4, magazine1, "Title5")
article1 = Article.new(author1, magazine4, "Title6")




### DO NOT REMOVE THIS
binding.pry

0
