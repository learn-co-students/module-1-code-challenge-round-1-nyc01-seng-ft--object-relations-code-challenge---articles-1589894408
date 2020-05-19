require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

christa = Author.new("Christa")
rose = Author.new("Rose")
caitlin = Author.new("Caitlin")
phil = Author.new("Phil")

vogue = Magazine.new("Vogue", "Fashion")
digest = Magazine.new("Digest", "Health")
elle = Magazine.new("Elle", "Fashion")
cosmo = Magazine.new("Cosmopolitan", "Lifestyle")
shape = Magazine.new("Shape", "Health")
newyorker = Magazine.new("The New Yorker", "Lifestyle")

surgery = Article.new(christa, vogue, "Plastic Surgery")
flowers = Article.new(rose, cosmo, "Flowers")
music = Article.new(phil, newyorker, "Music")
exercise = Article.new(christa, shape, "Exercise")
clothes = Article.new(caitlin, vogue, "This Season's Styles")
food = Article.new(rose, digest, "Healthy Food")
snacks = Article.new(caitlin, cosmo, "Quick Snacks")
women = Article.new(phil, newyorker, "Women")
books = Article.new(phil, newyorker, "Books")
fiction = Article.new(caitlin, elle, "Fiction Books")
last = Article.new(christa, vogue, "Last")
article = Article.new(christa, vogue, "Article")









### DO NOT REMOVE THIS
binding.pry

0
