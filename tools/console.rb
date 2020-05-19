require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

jane = Author.new("jane")
jake = Author.new("jake")

gq = Magazine.new("GQ", "mens")
bust = Magazine.new("Bust", "womens")
wh = Magazine.new("women's health", "womens")

gqarticle = Article.new(gq, jake)
bustarticle = Article.new(bust, jane)
wharticle = Article.new(wh, jake)









### DO NOT REMOVE THIS
binding.pry

0
