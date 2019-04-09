require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

  magazine1 = Magazine.new("NY time", "news")
  magazine2 = Magazine.new("Boston time", "news")
  magazine3 = Magazine.new("some time", "random")
  magazine4 = Magazine.new("Autoban", "cars")

  article1 = Article.new(david, magazine1, "some_news", "random_news")
  article2 = Article.new(jeff, magazine2, "daily_news", "random news with the most content")
  article2 = Article.new(david, magazine4, "caymans buyer guide", "cars")
  article2 = Article.new(will, magazine3, "just read it", "random stuff")

  david = Author.new("david.z")
  jeff = Author.new("jeff.b")
  will = Author.new("will.s")









### DO NOT REMOVE THIS
binding.pry

0
