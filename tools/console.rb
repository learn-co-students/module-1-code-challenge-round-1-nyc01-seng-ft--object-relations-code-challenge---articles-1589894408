require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
magazine = Magazine.new("New York Times", "Polititcs")
magazine1 = Magazine.new("Economist", "Business")
magazine2 = Magazine.new("Bloomberg", "Technology")

author = Author.new("G-eazy")
author1 = Author.new("Pop Smoke")
author2 = Author.new("Lil Pump")

 Article.new(author, magazine, "Welcome to party")
 Article.new(author1, magazine, "Dior")
 Article.new(author2, magazine2, "Element")








### DO NOT REMOVE THIS
binding.pry

0
