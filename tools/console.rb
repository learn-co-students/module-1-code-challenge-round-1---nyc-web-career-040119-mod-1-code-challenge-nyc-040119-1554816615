require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
##authors##
author1 = Author.new("Author 1")
author2 = Author.new("Author 2")
author3 = Author.new("Author 3")

##magazines##
mag1 = Magazine.new("Mag 1", "home")
mag2 = Magazine.new("Mag 2", "music")
mag3 = Magazine.new("Mag 3", "home")

##articles##
article1 = Article.new(author1,mag1,"Article 1","Article 1's content, which is the longest")
article2 = Article.new(author2,mag2,"Article 2","Article 2's content")
article3 = Article.new(author1,mag2,"Article 3","Article 3's content")
article4 = Article.new(author3,mag3,"Article 4","Article 4's content")
article5 = author3.add_article(mag3,"Article 5", "Article 5's content!")
article6 = Article.new(author1,mag2,"Article 6","Article 6's content")









### DO NOT REMOVE THIS
binding.pry

0
