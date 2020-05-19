require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Bob")
author2 = Author.new("Jeremy")
author3 = Author.new("Mike")
author4 = Author.new("Carl")

mag1 = Magazine.new("Car and Driver", "Cars")
mag2 = Magazine.new("MotorTrend", "Cars")
mag3 = Magazine.new("Guns 'n Ammo", "Guns")
mag4 = Magazine.new("Boom Daily", "Guns")

art1 = Article.new(author1, mag1, "Lotus")
art2 = Article.new(author2, mag2, "Jag")
art3 = Article.new(author2, mag1, "Porsche")
art4 = Article.new(author2, mag1, "Chevy")
art5 = Article.new(author1, mag3, "Boom")
art6 = Article.new(author1, mag4, "Explosion")
art7 = Article.new(author2, mag1, "Ford")
art8 = Article.new(author4, mag1, "Tesla")
art9 = Article.new(author4, mag1, "Toyota")
art10 = Article.new(author4, mag1, "Scion")




### DO NOT REMOVE THIS
binding.pry

0
