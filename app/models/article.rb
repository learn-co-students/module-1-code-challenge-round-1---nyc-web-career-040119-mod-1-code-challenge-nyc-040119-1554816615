#Many Authors to one Article
#Many Magazines to one Article
class Article
  attr_reader :authors, :magazines, :title
  attr_accessor :content
# + `Article.all`
#   + Returns an array of all Article instances
### Initialize to declare many authors and many magazines that will not change.

  @@all = []

    def initialize(authors, magazines, title, content)
        #+`Article#author` + Returns the author for that given article
      @authors = authors
      @magazines = magazines
      @title = title
      @content = content
      article = 'content'

      @@all << self
    end

    def self.all
      @@all
    end
end










  + `Article#magazine`
    + Returns the magazine for that given article
  + `Article#title`
    + Returns the title for that given article
  + `Article#content`
    + Returns the content for that given article
