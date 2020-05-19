require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
brad = Author.new("Brad")
anitha = Author.new("Anitha")
chloe = Author.new("Chloe")
max = Author.new("Max")

mag = Magazine.new("Mag", "Category A")
zine = Magazine.new("Zine", "Category B")
pop = Magazine.new("Pop", "Category A")
onion = Magazine.new("Onion", "Category A")

a1 = Article.new(brad, mag, "The Rona")
a2 = Article.new(anitha, onion, "That man in the White House")
a3 = Article.new(chloe, pop, "Quarentine Workouts")
a4 = Article.new(max, mag, "Bread, Bread, Bread")










### DO NOT REMOVE THIS
binding.pry

0
