require 'pry'
# require_relative '../config/environment.rb'
require_relative '../app/models/article.rb'
require_relative '../app/models/author.rb'
require_relative '../app/models/magazine.rb'

# def reload
#   load 'config/environment.rb'
# end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Chloe Kim")
author2 = Author.new("David Lee")
author3 = Author.new("Yong Kim")

magazine1 = Magazine.new("Vogue", "fashion")
magazine2 = Magazine.new("Science", "research")
magazine3 = Magazine.new("Bon Appetit", "cooking")

article1 = Article.new(author1, magazine1, "Spring Fashion")
article2 = Article.new(author2, magazine1, "Fashion Week")
article3 = Article.new(author2, magazine2, "Covid-19")
article4 = Article.new(author3, magazine2, "Cancer Research")
article5 = Article.new(author1, magazine3, "Grilled Cheese Sandwich")
article6 = Article.new(author2, magazine3, "Seafood Pasta")
article7 = Article.new(author3, magazine3, "French Fries")
article8 = Article.new(author2, magazine3, "Chicken Salad")



### DO NOT REMOVE THIS
binding.pry

0
