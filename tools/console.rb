require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

jake = Author.new("Jake")
bob = Author.new("Bob")

people = Magazine.new("People", "Pop Cuture")
si = Magazine.new("Sports Illustrated", "Sports")
time = Magazine.new("Time", "Current Events")

article1 = Article.new(jake, si, "Football")
article2 = Article.new(bob, people, "Beautiful People")
article3 = Article.new(jake, si, "Baseball")
article4 = Article.new(jake, time, "Hockey")
article5 = Article.new(jake, si, "Wrestling")
article5 = Article.new(bob, si, "Hello")




### DO NOT REMOVE THIS
binding.pry

0
