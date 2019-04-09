
#join table

class Article

  attr_accessor :author, :magazine, :title, :content

  @@all = []

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title

    @@all << self
  end

  def self.all
    @@all
  end




end
