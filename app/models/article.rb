# JOIN TABLE
class Article
  attr_reader :author, :magazine, :title, :content

  @@all = []
  def initialize(author_object, magazine_object, title, content)
    @author = author_object
    @magazine = magazine_object
    @title = title
    @content = content

    @@all << self
  end

  # INSTANCE METHODS

  # CLASS METHODS
  def self.all
    @@all
  end

end
