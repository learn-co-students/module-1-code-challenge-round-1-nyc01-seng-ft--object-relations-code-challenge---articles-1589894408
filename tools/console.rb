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

gqarticle = Article.new(gq, jake, "2020 Summer Men's Fashion")
gqarticle2 = Article.new(gq, jake, "a second GQ article")
bustarticle = Article.new(bust, jane, "Women in Activism")
wharticle = Article.new(wh, jake, "20 min Ab Workouts")



### DO NOT REMOVE THIS
binding.pry

0
