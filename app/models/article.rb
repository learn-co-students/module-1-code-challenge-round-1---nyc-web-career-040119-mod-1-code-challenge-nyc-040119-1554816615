
require 'pry'
#This is my Join Table
class Article

  attr_reader :author, :magazine
  attr_accessor :content, :title

  @@all = []

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content

    @@all << self
  end

  #class method
  def self.all
    @@all
  end


  #instance methods
  def author
    @author
  end

  def magazines
    @magazine
  end

  def titles
    @title
  end

  def content
    @content
  end



end
