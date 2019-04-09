require "pry"
require_relative '../config/environment.rb'
require_relative "../app/models/author.rb"
require_relative "../app/models/article.rb"
require_relative "../app/models/magazine.rb"

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

victor_hugo = Author.new("Victor Hugo")
nathan_hawthorne = Author.new("Nathaniel Hawthorne")

lit_mag = Magazine.new("Lit Mag", "literature")

words = Article.new("Words", "more words", victor_hugo, lit_mag)
wordy_words = Article.new("Wordy Words", "This is a wordy article", victor_hugo, lit_mag)
wordier_words = Article.new("Wordier Words", "This article is more verbose than the former", nathan_hawthorne, lit_mag)







### DO NOT REMOVE THIS
binding.pry

0
