require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
peter = Author.new("Peter A.")
jack = Author.new("Jack F.")
ren = Author.new("Ren O.")

times = Magazine.new("Times", "society")
ng = Magazine.new("National Geography", "photography")
fw = Magazine.new("Fox News", "news")
wp = Magazine.new("Washington Post", "news")

a1 = Article.new(peter, times, "Great Depression", "Great Depression was sad. No more.")
a2 = Article.new(peter, fw, "Wall Street Scam", "Scammers")
a3 = Article.new(jack, times, "Global Warming", "It's so hot")
a4 = Article.new(peter, times, "new society", "building new society")










### DO NOT REMOVE THIS
binding.pry

0
