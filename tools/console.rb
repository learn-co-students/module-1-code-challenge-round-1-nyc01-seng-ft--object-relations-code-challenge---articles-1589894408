require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Steve Cook")
author2 = Author.new("Layne Norton")
author3 = Author.new("George Clooney")
lifestyle = Magazine.new("Mens Health", "Lifestyle")
exercise = Magazine.new("Muscle & Fitness", "Exercise")
fashion = Magazine.new("GQ", "Lifestyle")
article1 = Article.new(author1, lifestyle, "A Better You")
article2 = Article.new(author2, exercise, "10 Steps to a Stronger Core")
article3 = Article.new(author3, fashion, "Summer Wardrobe Must Have's")
article4 = Article.new(author1, exercise, "More Exercise")







### DO NOT REMOVE THIS
binding.pry

0
