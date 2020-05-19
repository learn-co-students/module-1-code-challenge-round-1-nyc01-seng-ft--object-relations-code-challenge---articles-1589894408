require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
require 'pry'
require_relative '../app/models/article.rb'
require_relative '../app/models/magazine.rb'
require_relative '../app/models/author.rb'

author1 = Author.new("Chase")
author2 = Author.new("Carley")
author3 = Author.new("Maizey")
author4 = Author.new("Abbe")

magazine1 = Magazine.new("Dog's Life", "Pets")
magazine2 = Magazine.new("Coding Weekly", "Tech")
magazine3 = Magazine.new("Skydiving for Kids", "Leisure")
magazine4 = Magazine.new("Booze n' Grub", "Food")




author1.add_article(magazine1, "Why I love Boston Terriers")
author1.add_article(magazine1, "Poodles")
author1.add_article(magazine1, "City Dogs")
author2.add_article(magazine1,"Learning to sit")

author3.add_article(magazine2, "What the hell are loops?")
author3.add_article(magazine2, "Ennumerables")
author3.add_article(magazine2, "Classes")

author4.add_article(magazine2, "This is my Domain")

author1.add_article(magazine3, "The ultimate Bday Present")
author2.add_article(magazine3, "Jumping for Joy")
author2.add_article(magazine3, "Best Drop Sites")
author2.add_article(magazine3, "Best Drop Sites")

author3.add_article(magazine4,"Favorite Whiskeys")
author4.add_article(magazine4,"Bloody Mary Recipes")
author4.add_article(magazine4,"Taco Tuesday")
author4.add_article(magazine4,"Vegan Chicken Nuggets")


puts Author.all
puts Magazine.all
puts Article.all


### DO NOT REMOVE THIS
binding.pry

0
