require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

rowling = Author.new("JK Rowling")
nye = Author.new("Bill Nye")
dgt = Author.new("Neil DeGrasse Tyson")

seventeen = Magazine.new("Seventeen", "Pop Culture")
science = Magazine.new("Science Rules", "Science")

a1 = Article.new(rowling, seventeen, "HP is Still Cool", "Everyone things HP is not cool anymore, but it is still very cool and very relevant!")

a2 = Article.new(nye, science, "Science Still Rules", "I know this has been said many times before, but it needs to be said again. Science rules. I love science. I can't get enough science. Everyone should love science.")

a3 = dgt.add_article(science, "Bill Nye Sucks", "Bill Nye is the worst. I love science, and science rules, but Bill Nye is actually an evil robot and you should listen to me instead.")

a4 = nye.add_article(science, "Not a Robot", "I am not a robot. I am a person. Neil is lying.")

### DO NOT REMOVE THIS
binding.pry

0
