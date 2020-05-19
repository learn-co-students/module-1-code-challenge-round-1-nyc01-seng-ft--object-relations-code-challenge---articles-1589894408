require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Kyle B")
author2 = Author.new("Sam G")
author3 = Author.new("Britt")
author4 = Author.new("Janelle")

vogue = Magazine.new("Vogue", "Fashion")
forbes = Magazine.new("Forbes", "Business")
wired = Magazine.new("Wired", "Tech")
home = Magazine.new("Better Homes and Gardens", "Home")


plants = Article.new(author3, home, "Plants for Summer")
models = Article.new(author4, vogue, "Model Diversity")
biotech = Article.new(author1, wired, "Biotech in 2020")
hundred = Article.new(author2, forbes, "Forbes 100")
apple = Article.new(author2, wired, "New iphone")
mic = Article.new(author2, wired, "Microsoft")




### DO NOT REMOVE THIS
binding.pry

0
