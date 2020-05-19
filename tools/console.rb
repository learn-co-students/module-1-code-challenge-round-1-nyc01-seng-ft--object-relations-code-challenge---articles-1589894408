require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


require 'pry'
require './app/models/author.rb'
require './app/models/article.rb'
require './app/models/magazine.rb'

atl = Magazine.new("The Atlantic", "Literature")
jgardner = Author.new("John Gardner")
artone = Article.new("John Gardner", "The Atlantic", "How to write a class lol")



"tester"






### DO NOT REMOVE THIS
binding.pry

0
