require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


A_1 = Author.new("Ada")
A_2 = Author.new("Ewa")
A_3 = Author.new("Ola")
A_4 = Author.new("Ron")

M_1 = Magazine.new("GQ", "travel")
M_2 = Magazine.new("AB", "business")
M_3 = Magazine.new("MN", "lifestyle")

Article.new(A_1, M_2, "You")
Article.new(A_3, M_2, "Me")
Article.new(A_2, M_3, "They")
Article.new(A_4, M_1, "Us")








### DO NOT REMOVE THIS
binding.pry

0
