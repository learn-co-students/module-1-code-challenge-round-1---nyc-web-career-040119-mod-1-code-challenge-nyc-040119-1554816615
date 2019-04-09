require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#AUTHORS
jk_rowling = Author.new("J.K. Rowling")
nick_sparks = Author.new("Nicholas Sparks")

#MAGAZINES
maxim = Magazine.new("Maxim", "Men Stuff")
sports_illustrated = Magazine.new("Sports Illustrated", "Sports")

#ARTICLES (JOIN TABLE)
diet = Article.new(jk_rowling, maxim, "How to Diet", "Diet info")
champion = Article.new(nick_sparks, sports_illustrated, "Virginia National Champs", "NCAA Chamionship")








### DO NOT REMOVE THIS
binding.pry

0
