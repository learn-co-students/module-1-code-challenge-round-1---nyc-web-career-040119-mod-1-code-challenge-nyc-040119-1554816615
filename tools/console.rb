require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

## MAGAZINE INITS

health = Magazine.new('Health', 'Fitness')
wealth = Magazine.new('Wealth', 'Finance')
prosperity = Magazine.new('Prosperity', 'LivingLife')

#MAGAZINE METHOD TESTS

puts Magazine.find_by_name('Health')

## ARTICLE INITS

flabs = Article.new('Health', 'Fabio', 'Abs to Flabs', 'Fitness')


### DO NOT REMOVE THIS
binding.pry

0
