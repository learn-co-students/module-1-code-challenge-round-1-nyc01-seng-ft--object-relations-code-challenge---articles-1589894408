require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

mag1 = Magazine.new("Green Goddes", "Gardening")
mag2 = Magazine.new("The Wall", "Entertainment")
mag3 = Magazine.new("Insecure", "Lifestyle")

auth1 = Author.new("Dolly Desir")
auth2 = Author.new("Laurie Lambert")
auth3 = Author.new("Issa Rae")
#binding.pry

art1 = Article.new(auth1,mag1, "Urband Jungle")
art2 = Article.new(auth2,mag2, "Are the Dragons Gone?")
art3 = Article.new(auth3,mag3, "Hella Confused")



### DO NOT REMOVE THIS
#binding.pry

0
