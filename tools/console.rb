require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
jeff = Author.new("Jeff")
bennie = Author.new("Bennie")
tessa = Author.new("Tessa")

wired = Magazine.new("Wired", "Technology")
new_yorker = Magazine.new("The New Yorker", "News")
game = Magazine.new("Game Informer", "Entertainment")

jeff.add_article(wired, "The Bugs of Sekiro", "Sekiro is a game. There are bugs in Sekiro. Speedrunners take advantage of these bugs to get better time. All games have bugs. Sekiro has bugs. Therefore, Sekiro is a game.")
jeff.add_article(new_yorker, "I Live in New York", "When I woke up this morning I took the subway. This makes me a New Yorker, living in New York. I am qualified to write for this magazine.")
jeff.add_article(game, "Video Games R Kool", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis sem in mi imperdiet lobortis. Sed ornare scelerisque mi nec pellentesque. Nam ornare fringilla ex quis pharetra. Nullam condimentum diam erat, vel ornare enim tempus nec. Suspendisse ut nulla eu nisl sollicitudin dictum.")

bennie.add_article(wired, "Dogs in Tech", "Ruff ruff bark bark bark yip bark ruff bark yip *wags tail*.")
bennie.add_article(new_yorker, "Going Outside", "I don't like putting on my coat but I do like going outside.")

tessa.add_article(game, "Watching Jeff Play Binding of Isaac", "Sometimes I get startled because he gets upset and shouts.")
tessa.add_article(new_yorker, "Everything is Big", "Living in New York can be scary. Everything is big and I am small. :(")







### DO NOT REMOVE THIS
binding.pry

0
