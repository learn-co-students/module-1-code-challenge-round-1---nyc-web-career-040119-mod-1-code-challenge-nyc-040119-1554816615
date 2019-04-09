require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jim = Author.new("Jim")
anthony = Author.new("Anthony")
tony = Author.new("Tony")

bi = Magazine.new("Business Insider","Business")
nyt = Magazine.new("New York Times", "News")
ng = Magazine.new("National Geographic", "Geography")

a1 = Article.new(jim,bi,"top tips", "stuff")
a2 = Article.new(anthony,nyt,"big news", "moar stuff")
a3 = Article.new(tony,ng,"cool pictures", "look at this stuff")
a4 = Article.new(tony,ng,"cool pictures2", "look at this stuffffff")

jim.add_article(ng,"moar cool stuff","LOOK A UFO")
jim.magazines
jim.show_specialties

###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
