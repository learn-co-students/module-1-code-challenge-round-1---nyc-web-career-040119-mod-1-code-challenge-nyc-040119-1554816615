require "pry"
require_relative "./article"
require_relative "./author"
require_relative "./magazine"

# Author >---< Article >---< Magazine

xavier = Author.new("Xavier")
sebastian = Author.new("Sebastain")
ali = Author.new("Sebastain")

nintendo_power = Magazine.new("Nintendo Power", "Video Games")
gamepro = Magazine.new("Gamepro", "Video Games")
comospolitian = Magazine.new("Comospolitian", "Girly Stuff")


article_01 = xavier.add_article(nintendo_power,"Top 10 Games", "Super Mario Bros 3 ranks at number 1...")
article_02 = xavier.add_article(nintendo_power,"Classfied Corner", "The secret to infinite lives is...")
article_03 = sebastian.add_article(nintendo_power, "Player's Pulse", "blah blah blah")

article_04 = sebastian.add_article(gamepro, "Street Fighter II Review", "Down, Down-Forward, Forward plus Punch create a Hadoken...")
article_05 = ali.add_article(comospolitian, "Fashion", "Girly girly text blah stuff")

puts nintendo_power.contributors
puts nintendo_power.word_count

puts Magazine.find_by_name("Nintendo Power").name