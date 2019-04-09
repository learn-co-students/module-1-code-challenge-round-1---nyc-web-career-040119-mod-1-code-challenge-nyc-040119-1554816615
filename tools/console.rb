require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

rowling = Author.new("JK Rowling")
tolkien = Author.new("JRR Tolkien")


natgeo = Magazine.new("National Geographic", "anthropology")

hp_at = Article.new("Hplore" , "dsfqawfqewfqwef" , rowling , natgeo)
lotr_at = Article.new("Lotrlore" , "qw" , tolkien , natgeo)








### DO NOT REMOVE THIS
binding.pry

0
