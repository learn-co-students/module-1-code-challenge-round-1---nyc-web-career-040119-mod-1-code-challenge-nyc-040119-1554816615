require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
auth1 = Author.new("Steve")
auth2 = Author.new("Ferris")
auth3 = Author.new("Danielle")
auth4 = Author.new("Jeff")
auth5 = Author.new("Adam")

mag1 = Magazine.new("MathWorks","Math")
mag2 = Magazine.new("MadHouse","Comics")
mag3 = Magazine.new("Furniture Plus","Furniture")

art1 = Article.new(auth1,mag1,"1+1=3","afhluna.arefnjaeruaer airuh auhf alcauenfalnfalnaelruicalruienaf")
art2 = Article.new(auth2,mag1,"WTH Steve?! 1+1=4!!","afhluna.arefnjaeruaer airuh auhf alcauenfalnfalnaelruicalruienaf ljknvelrunclqerjerz,sdnmvm")
art3 = Article.new(auth1,mag2,"WTH Steve?! 1+1=4!!","afhluna.arefnjaeruaer airuh auhf alcauenfalnfalnaelruicalruienaf ljknvelrunclqerjerz,sdnmvm")







### DO NOT REMOVE THIS
binding.pry

0
