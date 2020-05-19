require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# Author instances:

author1 = Author.new("Oprah")

# Magazine instances: 

magazine1 = Magazine.new("Oprah Magazine", "Lifestyle")

# Article instances: 

article1 = Article.new(author1, magazine1, "Oprah's Car Give-Away")
article2 = Article.new(author1, magazine1, "Oprah's Christmas Surprise")
article3 = Article.new(author1, magazine1, "Oprah's Meditation Guide")

### DO NOT REMOVE THIS
binding.pry

0