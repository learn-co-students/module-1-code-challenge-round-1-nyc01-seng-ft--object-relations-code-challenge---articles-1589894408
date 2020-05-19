require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("author one")
author2 = Author.new("author two")
author3 = Author.new("author three")
author4 = Author.new("author four")
author5 = Author.new("author five")

magazine1 = Magazine.new("magazine1", "category1")
magazine2 = Magazine.new("magazine2", "category1")
magazine3 = Magazine.new("magazine3", "category2")
magazine4 = Magazine.new("magazine4", "category2")
magazine5 = Magazine.new("magazine5", "category3")

article1 = Article.new(author1, magazine1, "Article One")
article2 = Article.new(author1, magazine1, "Article Two")
article3 = Article.new(author1, magazine1, "Article Three")
article4 = Article.new(author1, magazine1, "Article Four")
article5 = Article.new(author1, magazine1, "Article Five")
article6 = Article.new(author1, magazine1, "Article Six")
article7 = Article.new(author1, magazine1, "Article Seven")
article8 = Article.new(author1, magazine1, "Article Eight")
article9 = Article.new(author1, magazine1, "Article Nine")







### DO NOT REMOVE THIS
binding.pry

0
