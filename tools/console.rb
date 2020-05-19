require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a_gary = Author.new("Gary")
a_grant = Author.new("Grant")
a_jeff = Author.new("Jeff")


nintendo = Magazine.new("Nintendo","Video Games")
wired = Magazine.new("Wired","Technology")
gadget = Magazine.new("Gadget","Technology")
the_coder_corner = Magazine.new("The Coder Corner","Technology")
entreprenuer = Magazine.new("Entreprenuer","Business")
forbes = Magazine.new("Forbes","Business")

a_gary.add_article(wired,"Augmented Reality and It's Impact in society")
a_gary.add_article(wired,"VR as a mean for therapy")
a_gary.add_article(wired,"VR vs Augmented Reality")
a_gary.add_article(gadget,"Magic Lens, breaking through the language barrier")
a_gary.add_article(the_coder_corner,"Ruby for newbies")
a_gary.add_article(the_coder_corner,"Strongly typed vs Loosely Type Languages")
a_gary.add_article(forbes,"Top Tech Startups")

a_grant.add_article(nintendo,"Ideas for the nintendo new console")
a_grant.add_article(wired,"Submerge into a new world VR")
a_grant.add_article(the_coder_corner,"First step into VR Development using Unity")

a_jeff.add_article(entreprenuer,"How I became my own Boss")
a_jeff.add_article(entreprenuer,"Steps to get the atenttion of investors")
a_jeff.add_article(entreprenuer,"Tips for Stratups")
a_jeff.add_article(forbes,"I am rich, I'll tell you how")



### DO NOT REMOVE THIS

binding.pry

0
