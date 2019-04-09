#Join Table
#Article to many Authors
#Article to many Magazines
class Article
  attr_reader :title
  attr_accessor :magazine, :author, :content

  @@all = []

  def initialize(magazine, author, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content

    @@all << self
  end

  def magazines
     self.author.select {|magazine| magazine.author.title == self }
  end

  def authors
    self.magazine.select {|author| author.magazine.title == self }
  def self.all
    @@all
  end
end
