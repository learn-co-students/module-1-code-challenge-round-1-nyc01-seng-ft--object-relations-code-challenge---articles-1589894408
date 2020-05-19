require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Steve Cook")
author2 = Author.new("Layne Norton")
author3 = Author.new("George Clooney")
magazine1 = Magazine.new("Mens Health", "Lifestyle")
magazine2 = Magazine.new("Muscle & Fitness", "Exercise")
magazine3 = Magazine.new("GQ", "Lifestyle")
article1 = Article.new(author1, magazine1, "A Better You")
article2 = Article.new(author2, magazine2, "10 Steps to a Stronger Core")
article3 = Article.new(author3, magazine3, "Summer Wardrobe Must Have's")









### DO NOT REMOVE THIS
binding.pry

0
