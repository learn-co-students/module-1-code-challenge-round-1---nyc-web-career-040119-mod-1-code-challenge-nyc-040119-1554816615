require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#author
aretha = Author.new("Aretha")
martin = Author.new("Martin")
alice = Author.new ("Alice")





#magazine
vogue = Magazine.new("Vogue", "fashion")
motor_trend = Magazine.new("Motor Trend", "cars")
wired = Magazine.new("Wired", "technology")

#article
aretha.add_article(self,vogue,"Fashion in tech", "Fashion")
aretha.add_article(self,wired,"Poem in tech", "art")
aretha.add_article(self,wired,"Poem in tech", "art")
martin.add_article(self,motor_trend,"Self Driving Cars", "Tech")
martin.add_article(self,vogue,"Metal Coats", "Tech")


binding.pry






### DO NOT REMOVE THIS
binding.pry

0
