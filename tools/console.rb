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
article2 = Article.new(author1, magazine2, "Article Two")
article3 = Article.new(author1, magazine3, "Article Three")
article4 = Article.new(author1, magazine4, "Article Four")
article5 = Article.new(author1, magazine5, "Article Five")
article6 = Article.new(author2, magazine1, "Article Six")
article7 = Article.new(author2, magazine2, "Article Seven")
article8 = Article.new(author3, magazine1, "Article Eight")
article9 = Article.new(author3, magazine2, "Article Nine")
article10 = Article.new(author4, magazine1, "Article Ten")
article11 = Article.new(author4, magazine2, "Article Eleven")
article12 = Article.new(author5, magazine1, "Article Twelve")








### DO NOT REMOVE THIS
binding.pry

0
