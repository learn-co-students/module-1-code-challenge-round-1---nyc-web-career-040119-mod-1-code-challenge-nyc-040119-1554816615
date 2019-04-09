require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

will = Author.new("Shakespeare")
jd = Author.new("Salinger")

cosmo = Magazine.new("Cosmo", "Garbage")
vogue = Magazine.new("Vogue", "surprisingly good")

entropy = Article.new(jd, cosmo, "Reclusion", "bable")
sonets = Article.new(will, vogue, "Sonets", "high art")







### DO NOT REMOVE THIS
binding.pry

0
