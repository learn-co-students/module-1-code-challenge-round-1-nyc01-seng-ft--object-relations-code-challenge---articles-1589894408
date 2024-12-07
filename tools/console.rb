require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
ath0=Author.new("Alice")
ath1=Author.new("Bob")
ath2=Author.new("Chris")
ath3=Author.new("Diana")
ath4=Author.new("Emmmilia")
ath5=Author.new("Franklin")
ath6=Author.new("George")
ath7=Author.new("Hidy")
ath8=Author.new("Iris")

mgz0=Magazine.new("times", "Social")
mgz1=Magazine.new("Forbes", "Political")
mgz2=Magazine.new("Men", "Health")
mgz3=Magazine.new("Women", "health")
mgz4=Magazine.new("MIT Tech Review", "Tech")
mgz5=Magazine.new("Weekly", "Social")
mgz6=Magazine.new("Affairs", "Political")
mgz7=Magazine.new("Banned", "Social")

art0=Article.new("Ruby", ath0, mgz4)
art2=Article.new("Java", ath0, mgz4)
art3=Article.new("Ai", ath0, mgz4)
art4=Article.new("Python", ath0, mgz4)
art5=Article.new("C++", ath0, mgz4)

art6=Article.new("Jump", ath1, mgz3)
art7=Article.new("Diet", ath1, mgz3)
art8=Article.new("Calories", ath1, mgz3)
art9=Article.new("Muscles", ath2, mgz3)
art10=Article.new("Tonned", ath2, mgz3)







### DO NOT REMOVE THIS
binding.pry

0
